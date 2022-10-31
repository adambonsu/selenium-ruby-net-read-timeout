## Set up test environment
```
bash --login
rm Gemfile.lock 2>/dev/null
rvm install ruby-3.0.0 2>/dev/null
rvm use ruby-3.0.0
rvm --force gemset delete selenium-ruby-net-read-timeout 2>/dev/null
rvm gemset create selenium-ruby-net-read-timeout
rvm use ruby-3.0.0@selenium-ruby-net-read-timeout
gem install bundler
bundle install
```

## Execute Selenium test script
* Loads a chrome browser and visits google.com
* Delay of 5 seconds (by default)
* Attempts to visit example.com => Net::ReadTimeout
* Note: Can pass in a Delay value via the command line e.g `bundle exec ruby -d test_selenium.rb 0`
```
bundle exec ruby -d test_selenium.rb
```