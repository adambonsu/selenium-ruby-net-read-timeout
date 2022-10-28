## Set up test environment
```
rm Gemfile.lock 2>/dev/null
rvm use ruby-2.7.1
rvm --force gemset delete capybara-cucumber-experiment-net-read-timeout 2>/dev/null
rvm gemset create capybara-cucumber-experiment-net-read-timeout
rvm use ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout
gem install bundler
bundle install

```

## Execute test script
```
bundle exec ruby test.rb
```