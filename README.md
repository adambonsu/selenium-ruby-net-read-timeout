## What do we know?
* Can recreate issue with just chromedriver on work mbp
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error
* can consistently recreate issue with a 5 second delay between calls
* can still intermittently (50%) recreate the issue with a 3 second delay between calls
<<What about launching and interacting with a page???>>
* problem is not with the app
* problem is not related to cucumber
* Using ruby 3.0.0 does not fix the issue

## Environment
* Browser: Chrome Version 107.0.5304.87
* Chromedriver: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})
* Ruby: 3.0.0
* OS: macOS Monterey version 12.5

## What I have already tried (and did not work):
* setting client (Selenium::WebDriver::Remote::Http::Default.new) to 120 (seconds)



## Options
* Replace Net::HTTP with another HTTP client (like Curb) to see if it solves the problem.
    How to do this is explained on the wiki: http://code.google.com/p/selenium/wiki/RubyBindings#Using_Curb_or_your_own_HTTP_client
* use RSpec::Retry which adds a retry option for intermittently failing specs (ref: https://stackoverflow.com/questions/26354834/netreadtimeout-netreadtimeout-selenium-ruby)


## To do
* post bug to mailing list: https://github.com/teamcapybara/capybara/blob/master/CONTRIBUTING.md
* Ask on stack overflow if there's a way to use an alternative to http when running locally
* investigate jenkins re-tries for Net::ReadTimeout errors (short term solution)
* seek alternatives to capybara (NB: site_prism is "A Page Object Model DSL for Capybara")
  * Selenium: https://alternativeto.net/software/capybara/
  * create a selenium solution to replace capybara
* The default timeout is 60 seconds. One thing to try is to adjust the internal timeout to see if that fixes it (https://stackoverflow.com/questions/26354834/netreadtimeout-netreadtimeout-selenium-ruby)
* Prove cannot be recreated when run out of process - Run the app server out-of-process (to exclude a Capybara threading issue)
* Add the selenium driver desired capabilities Getting Net::ReadTimeout: visiting a website in Ruby Capybara Cucumber
* remove/manipulate capybara config settings

  



## Useful resources
https://railsware.com/blog/accessing-application-session-in-capybara/
Capybara Settings: https://www.kloia.com/blog/using-capybara-effectively-with-8-useful-configuration-parameters
https://www.browserstack.com/guide/understanding-selenium-timeouts
https://stackoverflow.com/questions/17753655/timeouterror-using-selenium-webdriver-in-ruby
https://github.com/seleniumhq/selenium-google-code-issue-archive/issues/1439


## Similar issues on Stack overflow
https://stackoverflow.com/questions/61234467/capybara-with-selenium-throws-netreadtimeout-error-intermittently-when-using


