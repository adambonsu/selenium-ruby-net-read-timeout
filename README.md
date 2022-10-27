## What do we know?
Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession
<<What about launching and interacting with a page???>>

But if there is a pause (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error

## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>
* Ideally can swap different apps in/out <<problem may be with the app>>


## To do
Remove suplerfluous content (make the problem smaller)
* remove unnecessary gems perhaps?
Experiment by swapping out app for another one
