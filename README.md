## What do we know?
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error
* can consistently recreate issue with a 5 second delay between calls
* can still intermittently (50%) recreate the issue with a 3 second delay between calls
<<What about launching and interacting with a page???>>

* problem is not with the app
* problem is not related to cucumber
* Increasing Capybara::config.default_max_wait_time to 30000 - no affect


## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>


## To do
* remove/manipulate capybara config settings (https://www.kloia.com/blog/using-capybara-effectively-with-8-useful-configuration-parameters)
* use latest version of ruby
* create a selenium solution to replace capybara
* seek alternatives to capybara (NB: site_prism is "A Page Object Model DSL for Capybara")
  * Selenium: https://alternativeto.net/software/capybara/
  


## Useful resources
https://railsware.com/blog/accessing-application-session-in-capybara/

