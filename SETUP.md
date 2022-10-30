## Set up test environment
```
bash --login
rm Gemfile.lock 2>/dev/null
rvm install ruby-3.0.0 2>/dev/null
rvm use ruby-3.0.0
rvm --force gemset delete selenium-experiment-net-read-timeout 2>/dev/null
rvm gemset create selenium-experiment-net-read-timeout
rvm use ruby-3.0.0@selenium-experiment-net-read-timeout
gem install bundler
bundle install
```

## Execute Selenium test script
* Loads google.com
* waits 5 seconds (by default)
* attempts to load example.com => Net::ReadTimeout
```
bundle exec ruby -d test_selenium.rb
```