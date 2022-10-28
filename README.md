## What do we know?
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
<<What about launching and interacting with a page???>>

* problem is not with the app

* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error

* If the delay is reduced from 5 to 3 seconds, the second page is loaded, but a Net::ReadTimeout still results?!?!?!
    POTENTIAL CLUE - the scenario should complete after the second page is loaded - is a cucumber after step being executed (to quit the capybara session...?)

* Increasing Capybara::config.default_max_wait_time to 30000 - no affect
* Is this even a cucumber thing?

* recreated outside of cucumber - see ./test.rb


## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>


## To do
Remove suplerfluous content (make the problem smaller)
* try to recreate outside of cucumber
* remove unnecessary gems perhaps?
* remove/manipulate capybara config settings
Experiment by swapping out app for another one


## Useful resources
https://railsware.com/blog/accessing-application-session-in-capybara/
https://www.kloia.com/blog/using-capybara-effectively-with-8-useful-configuration-parameters

