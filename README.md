## What do we know?
* Within a Capybara session, when launching and navigating from one page to another is fine if done in quick succession (no delay between calls)
<<What about launching and interacting with a page???>>

* problem is not with the app

* If there is a delay (1-2seconds) between the launch and an interaction, the session hangs and eventually returns a Net::ReadTimeout error

* If the delay is reduced from 5 to 3 seconds, the second page is loaded, but a Net::ReadTimeout still results?!?!?!
    POTENTIAL CLUE - the scenario should complete after the second page is loaded - is a cucumber after step being executed (to quit the capybara session...?)

* Increasing Capybara::config.default_max_wait_time to 30000 - no affect
* Is this even a cucumber thing?

## Task
Create a small project that illustrates this issue
* Ideally one page <<to share problem on stack overflow>>


## To do
Remove suplerfluous content (make the problem smaller)
* try to recreate outside of cucumber
* try removing the `default_max_wait_time` setting
    Intermittently getting the following error
    ```
    unknown error: cannot determine loading status
      from disconnected: Unable to receive message from renderer
        (Session info: chrome=107.0.5304.87) (Selenium::WebDriver::Error::UnknownError)
      0   chromedriver                        0x000000010fdd8598 chromedriver + 4404632
      1   chromedriver                        0x000000010fd5ffa3 chromedriver + 3911587
      2   chromedriver                        0x000000010fa0ce6a chromedriver + 425578
      3   chromedriver                        0x000000010f9f96bb chromedriver + 345787
      4   chromedriver                        0x000000010f9f9572 chromedriver + 345458
      5   chromedriver                        0x000000010f9f84ca chromedriver + 341194
      6   chromedriver                        0x000000010f9f89bc chromedriver + 342460
      7   chromedriver                        0x000000010fa063aa chromedriver + 398250
      8   chromedriver                        0x000000010f9fa01d chromedriver + 348189
      9   chromedriver                        0x000000010f9fb1b0 chromedriver + 352688
      10  chromedriver                        0x000000010f9fa2d1 chromedriver + 348881
      11  chromedriver                        0x000000010f9f9717 chromedriver + 345879
      12  chromedriver                        0x000000010f9f9572 chromedriver + 345458
      13  chromedriver                        0x000000010f9f84ca chromedriver + 341194
      14  chromedriver                        0x000000010f9f8862 chromedriver + 342114
      15  chromedriver                        0x000000010fa0eb6e chromedriver + 433006
      16  chromedriver                        0x000000010fa7a7af chromedriver + 874415
      17  chromedriver                        0x000000010fa62da2 chromedriver + 777634
      18  chromedriver                        0x000000010fa79f79 chromedriver + 872313
      19  chromedriver                        0x000000010fa62bd3 chromedriver + 777171
      20  chromedriver                        0x000000010fa37ced chromedriver + 601325
      21  chromedriver                        0x000000010fa38e51 chromedriver + 605777
      22  chromedriver                        0x000000010fda80ce chromedriver + 4206798
      23  chromedriver                        0x000000010fdac797 chromedriver + 4224919
      24  chromedriver                        0x000000010fdb3a4f chromedriver + 4254287
      25  chromedriver                        0x000000010fdad4da chromedriver + 4228314
      26  chromedriver                        0x000000010fd8623f chromedriver + 4067903
      27  chromedriver                        0x000000010fdca6a8 chromedriver + 4347560
      28  chromedriver                        0x000000010fdca816 chromedriver + 4347926
      29  chromedriver                        0x000000010fddf8fe chromedriver + 4434174
      30  libsystem_pthread.dylib             0x00007ff8063fe4e1 _pthread_start + 125
      31  libsystem_pthread.dylib             0x00007ff8063f9f6b thread_start + 15
```
* remove unnecessary gems perhaps?
* remove/manipulate capybara config settings
Experiment by swapping out app for another one


## Useful resources
https://railsware.com/blog/accessing-application-session-in-capybara/
https://www.kloia.com/blog/using-capybara-effectively-with-8-useful-configuration-parameters

