## Set up test environment
```
rvm use ruby-2.7.1
rvm gemset create capybara-cucumber-experiment-net-read-timeout
rvm use ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout
gem install bundler
bundle install
```

## Execute test script
```
bundle exec cucumber features
```