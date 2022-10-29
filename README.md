## What do we know?
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error
* can consistently recreate issue with a 5 second delay between calls
* can still intermittently (50%) recreate the issue with a 3 second delay between calls
<<What about launching and interacting with a page???>>
* problem is not with the app
* problem is not related to cucumber
* Using ruby 3.0.0 does not fix the issue

## What I have already tried (and did not work):
* Increasing Capybara::config.default_max_wait_time to 120

## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>


## Options
* Replace Net::HTTP with another HTTP client (like Curb) to see if it solves the problem.
    How to do this is explained on the wiki: http://code.google.com/p/selenium/wiki/RubyBindings#Using_Curb_or_your_own_HTTP_client
* use RSpec::Retry which adds a retry option for intermittently failing specs (ref: https://stackoverflow.com/questions/26354834/netreadtimeout-netreadtimeout-selenium-ruby)


## To do
* The default timeout is 60 seconds. One thing to try is to adjust the internal timeout to see if that fixes it (https://stackoverflow.com/questions/26354834/netreadtimeout-netreadtimeout-selenium-ruby)
* Prove cannot be recreated when run out of process - Run the app server out-of-process (to exclude a Capybara threading issue)
* Add the selenium driver desired capabilities Getting Net::ReadTimeout: visiting a website in Ruby Capybara Cucumber
* remove/manipulate capybara config settings
* create a selenium solution to replace capybara
* seek alternatives to capybara (NB: site_prism is "A Page Object Model DSL for Capybara")
  * Selenium: https://alternativeto.net/software/capybara/
  



## Useful resources
https://railsware.com/blog/accessing-application-session-in-capybara/
Capybara Settings: https://www.kloia.com/blog/using-capybara-effectively-with-8-useful-configuration-parameters
https://www.browserstack.com/guide/understanding-selenium-timeouts
https://stackoverflow.com/questions/17753655/timeouterror-using-selenium-webdriver-in-ruby
https://github.com/seleniumhq/selenium-google-code-issue-archive/issues/1439


## Similar issues on Stack overflow
https://stackoverflow.com/questions/61234467/capybara-with-selenium-throws-netreadtimeout-error-intermittently-when-using


