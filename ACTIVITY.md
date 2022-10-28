# Activity

## Recreated outside of cucumber
```
C02W63XEHTD6:capybara-cucumber-experiment-net-read-timeout adambons$ ruby test.rb
Traceback (most recent call last):
        18: from test.rb:33:in `<main>'
        17: from test.rb:28:in `recreate_timeout'
        16: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        15: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        14: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        13: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        12: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        11: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        10: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
         9: from /Users/adambons/.rvm/gems/ruby-2.7.1@capybara-cucumber-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
         8: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http.rb:1492:in `request'
         7: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http.rb:1519:in `transport_request'
         6: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http.rb:1519:in `catch'
         5: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http.rb:1528:in `block in transport_request'
         4: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http/response.rb:31:in `read_new'
         3: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/http/response.rb:42:in `read_status_line'
         2: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/protocol.rb:201:in `readline'
         1: from /Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/protocol.rb:191:in `readuntil'
/Users/adambons/.rvm/rubies/ruby-2.7.1/lib/ruby/2.7.0/net/protocol.rb:217:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
```


## tried removing the `Capybara::Config.default_max_wait_time` setting
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