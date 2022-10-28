## What do we know?
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
<<What about launching and interacting with a page???>>

* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error

If the delay is reduced from 5 to 3 seconds, the second page is loaded, but a Net::ReadTimeout still results?!?!?!

Increasing Capybara::config.default_max_wait_time to 30000 - no affect

## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>
* Ideally can swap different apps in/out <<problem may be with the app>>


## To do
Remove suplerfluous content (make the problem smaller)
* remove unnecessary gems perhaps?
* remove/manipulate capybara config settings
Experiment by swapping out app for another one
