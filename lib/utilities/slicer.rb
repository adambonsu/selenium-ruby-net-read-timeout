# frozen_string_literal: true

require 'cuke_modeler'

module Framework
  # :nodoc:
  module Slicer
    module_function

    # Split cucumber scenarios into /temp text files to assign to CI worker runs
    def run(source, split = 20, cucumber_profile = '')
      @tag = cucumber_profile
      @scenarios = []
      @split = split
      @base_dir = 'temp'

      FileUtils.rm_rf @base_dir
      FileUtils.mkdir_p @base_dir

      if File.directory?(source)
        extract(CukeModeler::Directory.new(source))
      else
        extract(CukeModeler::FeatureFile.new(source))
      end

      write
    end

    def extract(target)
      target.children.each do |e|
        e.is_a?(CukeModeler::Feature) ? feature(e) : extract(e)
      end
    end

    def include_tag(target)
      return true if @tag.nil? || @tag.empty?
      return true unless target.tags.select { |tag| tag.name == @tag }.empty?

      false
    end

    def feature(target)
      include_feature = include_tag(target)
      target.scenarios.each do |e|
        @scenarios.push("#{target.get_ancestor(:feature_file).path}:#{e.parsing_data[:scenario][:location][:line]}") if include_tag(e) || include_feature
      end

      target.outlines.each do |e|
        @scenarios.push("#{target.get_ancestor(:feature_file).path}:#{e.parsing_data[:scenario][:location][:line]}") if include_tag(e) || include_feature
      end
    end

    def write
      @scenarios = @scenarios.shuffle(random: Random.new(100))
      chunk_array(@scenarios, @split.to_i).each_with_index do |value, index|
        out_file = File.new("#{@base_dir}/test_env_#{index + 1}.txt", 'w')
        value.each do |v|
          out_file.puts "#{v} "
        end
        out_file.close
      end
    end

    def chunk_array(array, pieces = 2)
      len = array.length
      mid = (len / pieces)
      chunks = []
      start = 0
      1.upto(pieces) do |i|
        last = start + mid
        last -= 1 unless len % pieces >= i
        (chunks << array[start..last]) || []
        start = last + 1
      end
      chunks
    end
  end
end
