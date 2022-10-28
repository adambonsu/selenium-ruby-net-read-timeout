## Set up test environment
```
rm Gemfile.lock 2>/dev/null
rvm install ruby-3.0.0 2>/dev/null
rvm use ruby-3.0.0
rvm --force gemset delete capybara-experiment-net-read-timeout 2>/dev/null
rvm gemset create capybara-experiment-net-read-timeout
rvm use ruby-3.0.0@capybara-experiment-net-read-timeout
gem install bundler
bundle install
```

## Execute test script
```
bundle exec ruby test.rb
```