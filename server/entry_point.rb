#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'webrick'
require 'webrick/https'
require 'require_all'
require 'active_support'
require 'active_support/time'
require 'sinatra/reloader'

require_relative 'app'

CERT_PATH = "#{File.expand_path(__dir__)}/certs"
CURRENT_DIR = File.expand_path(__dir__)

webrick_options = {
  Port: 5000,
  Host: '0.0.0.0',
  Logger: WEBrick::Log.new($stderr, WEBrick::Log::DEBUG),
  DocumentRoot: "#{CURRENT_DIR}/public",
  SSLEnable: true,
  SSLVerifyClient: OpenSSL::SSL::VERIFY_NONE,
  SSLCertificate: OpenSSL::X509::Certificate.new(
    File.read(File.join(CERT_PATH, 'server.crt'))
  ),
  SSLPrivateKey: OpenSSL::PKey::RSA.new(
    File.read(File.join(CERT_PATH, 'server.key'))
  ),
  SSLCertName: [['CN', WEBrick::Utils.getservername]]
}
# Start WEBrick server with this App with webrick_options
Rack::Handler::WEBrick.run App, webrick_options
