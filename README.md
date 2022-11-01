# Ruby - Local Client - 5 second delay between session calls - Net::ReadTimeout: Net::ReadTimeout with #<TCPSocket:(closed)>


Issue Description:
Using Ruby Binding for chromedriver (Local Client), navigate to a url ('https://google.com'), wait 5 seconds, then attempt to navigate to a different url ('https://example.com) => Net::ReadTimeout error
Expected an attempt to navigate to a different url successfully loads that webpage

Steps to reproduce (if relevant, you MUST provide a simplified html page or link to public site):
## Test Repo
https://github.com/adambonsu/selenium-ruby-net-read-timeout

## Set up test environment:
```
bash --login
rm Gemfile.lock 2>/dev/null
rvm install ruby-3.0.0 2>/dev/null
rvm use ruby-3.0.0
rvm --force gemset delete selenium-experiment-net-read-timeout 2>/dev/null
rvm gemset create selenium-experiment-net-read-timeout
rvm use ruby-3.0.0@selenium-experiment-net-read-timeout
gem install bundler
bundle install
```

## Execute Test:
* Loads a chrome browser and visits google.com
* Delay of 5 seconds (by default) between url calls
* Attempts to visit example.com => Net::ReadTimeout
* Delay of 0 seconds at the end of the test to see the second page loaded
* Note: Via the command line you can pass in a Delay value between the url calls and a Delay at the end of the test
    * e.g `bundle exec ruby -d test_selenium.rb 0 2` # 0 delay between url calls and 2 second delay at the end to see the second page loaded
```
bundle exec ruby -d test_selenium.rb
```

## Environment:
* Browser: Chrome Version 107.0.5304.87
* Chromedriver: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})
* Language Bindings: Ruby 'selenium-webdriver' gem, version '4.5.0'
* Ruby: 3.0.0
* OS: macOS Monterey version 12.5
  - Processor 2.9 GHz Quad-Core Intel Core i7
  - Memory 16GB 2133 MHz LPDDR3
  - Graphics Intel HD Graphics 630 1536 MB


## Gemfile
```
# frozen_string_literal: true

source 'https://rubygems.org'

gem 'selenium-webdriver', '4.5.0'
gem 'webdrivers', '5.2.0'
```

## Short, Self Contained, Correct (Compilable), Example
test_selenium.rb
```
# frozen_string_literal: true

require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers'

def delay_between_calls
    ARGV.length > 0 ? ARGV[0].to_i : 5
end

def delay_after_test
    ARGV.length > 1 ? ARGV[1].to_i : 0
end

def driver
  @driver || register_chrome_browser
end

def register_chrome_browser
    options = Selenium::WebDriver::Chrome::Options.new(logging_prefs: { browser: 'ALL' },
        detach: true, args: ['--ignore-certificate-errors', '--no-sandbox', '--disable-gpu', '--autoplay-policy=no-user-gesture-required'])
    service = Selenium::WebDriver::Service.chrome(args: ['--verbose'])
    @driver = Selenium::WebDriver.for :chrome, :capabilities => options, service: service
end

def recreate_issue(delay_between_calls)
  driver.get 'https://www.google.com'
  sleep(delay_between_calls)
  driver.get 'https://example.com'
end

Selenium::WebDriver.logger.level = :debug
register_chrome_browser
recreate_issue(delay_between_calls)
sleep delay_after_test
driver.quit
```




Chromedriver log with verbose logging:
C02W63XEHTD6:selenium-ruby-net-read-timeout adambons$ bundle exec ruby -d test_selenium.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-31 21:56:13 DEBUG Webdrivers Checking current version
2022-10-31 21:56:13 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 21:56:13 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 21:56:13 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 21:56:13 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 21:56:13 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 21:56:13 DEBUG Webdrivers Checking current version
2022-10-31 21:56:13 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 21:56:13 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 21:56:13 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers Checking current version
2022-10-31 21:56:13 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 21:56:13 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 21:56:13 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 21:56:13 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 21:56:13 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 21:56:13 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 21:56:13 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 21:56:13 DEBUG Webdrivers using cached version as latest: 107.0.5304.62
2022-10-31 21:56:13 DEBUG Webdrivers Latest version available: 107.0.5304.62
2022-10-31 21:56:13 DEBUG Webdrivers A working webdriver version is already on the system
2022-10-31 21:56:13 DEBUG Selenium Executing Process ["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-31 21:56:13 DEBUG Selenium polling for socket on ["127.0.0.1", 9515]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9515
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9515
2022-10-31 21:56:14 INFO Selenium -> POST session
2022-10-31 21:56:14 INFO Selenium    >>> http://127.0.0.1:9515/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-31 21:56:14 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
[1667253374.148][INFO]: [b0a83eb86b5a5fc5c478a0a30059d323] COMMAND InitSession {
   "capabilities": {
      "alwaysMatch": {
         "browserName": "chrome",
         "goog:chromeOptions": {
            "args": [ "--ignore-certificate-errors", "--no-sandbox", "--disable-gpu", "--autoplay-policy=no-user-gesture-required" ],
            "detach": true
         },
         "goog:loggingPrefs": {
            "browser": "ALL"
         }
      }
   }
}
[1667253374.151][INFO]: Populating Preferences file: {
   "alternate_error_pages": {
      "enabled": false
   },
   "autofill": {
      "enabled": false
   },
   "browser": {
      "check_default_browser": false
   },
   "distribution": {
      "import_bookmarks": false,
      "import_history": false,
      "import_search_engine": false,
      "make_chrome_default_for_user": false,
      "skip_first_run_ui": true
   },
   "dns_prefetching": {
      "enabled": false
   },
   "profile": {
      "content_settings": {
         "pattern_pairs": {
            "https://*,*": {
               "media-stream": {
                  "audio": "Default",
                  "video": "Default"
               }
            }
         }
      },
      "default_content_setting_values": {
         "geolocation": 1
      },
      "default_content_settings": {
         "geolocation": 1,
         "mouselock": 1,
         "notifications": 1,
         "popups": 1,
         "ppapi-broker": 1
      },
      "password_manager_enabled": false
   },
   "safebrowsing": {
      "enabled": false
   },
   "search": {
      "suggest_enabled": false
   },
   "translate": {
      "enabled": false
   }
}
[1667253374.151][INFO]: Populating Local State file: {
   "background_mode": {
      "enabled": false
   },
   "ssl": {
      "rev_checking": {
         "enabled": false
      }
   }
}
[1667253374.152][INFO]: Launching chrome: /Applications/Google Chrome.app/Contents/MacOS/Google Chrome --allow-pre-commit-input --autoplay-policy=no-user-gesture-required --disable-background-networking --disable-client-side-phishing-detection --disable-default-apps --disable-gpu --disable-hang-monitor --disable-popup-blocking --disable-prompt-on-repost --disable-sync --enable-automation --enable-blink-features=ShadowDOMV0 --enable-logging --ignore-certificate-errors --log-level=0 --no-first-run --no-sandbox --no-service-autorun --password-store=basic --remote-debugging-port=0 --test-type=webdriver --use-mock-keychain --user-data-dir=/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.gDfI7g data:,

DevTools listening on ws://127.0.0.1:50702/devtools/browser/6b0ca06d-2f0d-4af6-b9e7-770eb74df5e2
[1667253374.870][DEBUG]: DevTools HTTP Request: http://localhost:50702/json/version
objc[63008]: Class WebSwapCGLLayer is implemented in both /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebCore.framework/Versions/A/Frameworks/libANGLE-shared.dylib (0x7ffb5dc86ec8) and /Applications/Google Chrome.app/Contents/Frameworks/Google Chrome Framework.framework/Versions/107.0.5304.87/Libraries/libGLESv2.dylib (0x11479ded8). One of the two will be used. Which one is undefined.
[1667253376.340][DEBUG]: DevTools HTTP Response: {
   "Browser": "Chrome/107.0.5304.87",
   "Protocol-Version": "1.3",
   "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
   "V8-Version": "10.7.193.18",
   "WebKit-Version": "537.36 (@f59ffb32abf8c01e9aa298400314bfdf0221b02f)",
   "webSocketDebuggerUrl": "ws://localhost:50702/devtools/browser/6b0ca06d-2f0d-4af6-b9e7-770eb74df5e2"
}

[1667253376.340][DEBUG]: DevTools HTTP Request: http://localhost:50702/json/list
[1667253376.367][DEBUG]: DevTools HTTP Response: [ {
   "description": "",
   "devtoolsFrontendUrl": "/devtools/inspector.html?ws=localhost:50702/devtools/page/B6EA6E565320F0C5275CE9C4E39C7722",
   "id": "B6EA6E565320F0C5275CE9C4E39C7722",
   "title": "",
   "type": "page",
   "url": "data:,",
   "webSocketDebuggerUrl": "ws://localhost:50702/devtools/page/B6EA6E565320F0C5275CE9C4E39C7722"
} ]

[1667253376.376][INFO]: resolved localhost to ["127.0.0.1","::1"]
[1667253376.393][DEBUG]: DevTools WebSocket Command: Target.getTargets (id=1) (session_id=) browser {
}
[1667253376.414][DEBUG]: DevTools WebSocket Response: Target.getTargets (id=1) (session_id=) browser {
   "targetInfos": [ {
      "attached": false,
      "browserContextId": "FA0391888476A526F13A1F731BFBB149",
      "canAccessOpener": false,
      "targetId": "B6EA6E565320F0C5275CE9C4E39C7722",
      "title": "data:,",
      "type": "page",
      "url": "data:,"
   } ]
}
[1667253376.414][DEBUG]: DevTools WebSocket Command: Target.attachToTarget (id=2) (session_id=) browser {
   "flatten": true,
   "targetId": "B6EA6E565320F0C5275CE9C4E39C7722"
}
[1667253376.424][DEBUG]: DevTools WebSocket Event: Target.attachedToTarget (session_id=) browser {
   "sessionId": "C2D1A99FB6AB4109026A0614E82713C0",
   "targetInfo": {
      "attached": true,
      "browserContextId": "FA0391888476A526F13A1F731BFBB149",
      "canAccessOpener": false,
      "targetId": "B6EA6E565320F0C5275CE9C4E39C7722",
      "title": "data:,",
      "type": "page",
      "url": "data:,"
   },
   "waitingForDebugger": false
}
[1667253376.424][DEBUG]: DevTools WebSocket Response: Target.attachToTarget (id=2) (session_id=) browser {
   "sessionId": "C2D1A99FB6AB4109026A0614E82713C0"
}
[1667253376.425][DEBUG]: DevTools WebSocket Command: Page.addScriptToEvaluateOnNewDocument (id=1) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "source": "(function () {window.cdc_adoQpoasnfa76pfcZLmcfl_Array = window.Array;window.cdc_adoQpoasnfa76pfcZLmcfl_Promise = window.Promise;window.cdc_adoQpoasnfa76pfcZLmcfl_Symbol = window.Symbol;}) ();"
}
[1667253376.426][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=2) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "(function () {window.cdc_adoQpoasnfa76pfcZLmcfl_Array = window.Array;window.cdc_adoQpoasnfa76pfcZLmcfl_Promise = window.Promise;window.cdc_adoQpoasnfa76pfcZLmcfl_Symbol = window.Symbol;}) ();"
}
[1667253376.430][DEBUG]: DevTools WebSocket Command: Log.enable (id=3) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.440][DEBUG]: DevTools WebSocket Command: Target.setAutoAttach (id=4) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "autoAttach": true,
   "flatten": true,
   "waitForDebuggerOnStart": false
}
[1667253376.446][DEBUG]: DevTools WebSocket Command: Page.enable (id=5) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.450][DEBUG]: DevTools WebSocket Command: Page.enable (id=6) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.602][DEBUG]: DevTools WebSocket Response: Page.addScriptToEvaluateOnNewDocument (id=1) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "identifier": "1"
}
[1667253376.603][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=2) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "type": "undefined"
   }
}
[1667253376.603][DEBUG]: DevTools WebSocket Response: Log.enable (id=3) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.604][DEBUG]: DevTools WebSocket Response: Target.setAutoAttach (id=4) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.604][DEBUG]: DevTools WebSocket Response: Page.enable (id=5) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.604][DEBUG]: DevTools WebSocket Response: Page.enable (id=6) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.604][DEBUG]: DevTools WebSocket Command: Runtime.enable (id=7) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.607][DEBUG]: DevTools WebSocket Event: Runtime.executionContextCreated (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "context": {
      "auxData": {
         "frameId": "B6EA6E565320F0C5275CE9C4E39C7722",
         "isDefault": true,
         "type": "default"
      },
      "id": 1,
      "name": "",
      "origin": "://",
      "uniqueId": "-2926003510243463162.-6345379772849599780"
   }
}
[1667253376.607][DEBUG]: DevTools WebSocket Response: Runtime.enable (id=7) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.607][DEBUG]: DevTools WebSocket Command: Page.enable (id=8) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.607][DEBUG]: DevTools WebSocket Response: Page.enable (id=8) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.607][DEBUG]: DevTools WebSocket Command: Runtime.enable (id=9) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.608][DEBUG]: DevTools WebSocket Response: Runtime.enable (id=9) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.608][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=10) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "awaitPromise": true,
   "expression": "(function() { // Copyright 2012 The Chromium Authors\n// Use of this source code is governed by a BSD-style license that can be\n// found in the LICENSE file.\n\n/**\n * Enum for WebDriver status codes....",
   "returnByValue": true
}
[1667253376.611][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=10) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "type": "object",
      "value": {
         "status": 0,
         "value": 1
      }
   }
}
[1667253376.611][INFO]: [b0a83eb86b5a5fc5c478a0a30059d323] RESPONSE InitSession {
   "capabilities": {
      "acceptInsecureCerts": false,
      "browserName": "chrome",
      "browserVersion": "107.0.5304.87",
      "chrome": {
         "chromedriverVersion": "107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})",
         "userDataDir": "/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.gDfI7g"
      },
      "goog:chromeOptions": {
         "debuggerAddress": "localhost:50702"
      },
      "networkConnectionEnabled": false,
      "pageLoadStrategy": "normal",
      "platformName": "mac os x",
      "proxy": {
      },
      "setWindowRect": true,
      "strictFileInteractability": false,
      "timeouts": {
         "implicit": 0,
         "pageLoad": 300000,
         "script": 30000
      },
      "unhandledPromptBehavior": "dismiss and notify",
      "webauthn:extension:credBlob": true,
      "webauthn:extension:largeBlob": true,
      "webauthn:virtualAuthenticators": true
   },
   "sessionId": "b0a83eb86b5a5fc5c478a0a30059d323"
}
2022-10-31 21:56:16 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.gDfI7g"},"goog:chromeOptions":{"debuggerAddress":"localhost:50702"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"b0a83eb86b5a5fc5c478a0a30059d323"}}
2022-10-31 21:56:16 INFO Selenium -> POST session/b0a83eb86b5a5fc5c478a0a30059d323/url
2022-10-31 21:56:16 INFO Selenium    >>> http://127.0.0.1:9515/session/b0a83eb86b5a5fc5c478a0a30059d323/url | {"url":"https://www.google.com"}
2022-10-31 21:56:16 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"32"}
[1667253376.616][INFO]: [b0a83eb86b5a5fc5c478a0a30059d323] COMMAND Navigate {
   "url": "https://www.google.com"
}
[1667253376.616][INFO]: Waiting for pending navigations...
[1667253376.616][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=11) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "1"
}
[1667253376.617][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=11) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "description": "1",
      "type": "number",
      "value": 1
   }
}
[1667253376.617][DEBUG]: DevTools WebSocket Command: DOM.getDocument (id=12) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.619][DEBUG]: DevTools WebSocket Response: DOM.getDocument (id=12) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "root": {
      "backendNodeId": 1,
      "baseURL": "data:,",
      "childNodeCount": 1,
      "children": [ {
         "attributes": [  ],
         "backendNodeId": 2,
         "childNodeCount": 2,
         "children": [ {
            "attributes": [  ],
            "backendNodeId": 3,
            "childNodeCount": 0,
            "localName": "head",
            "nodeId": 3,
            "nodeName": "HEAD",
            "nodeType": 1,
            "nodeValue": "",
            "parentId": 2
         }, {
            "attributes": [  ],
            "backendNodeId": 4,
            "childNodeCount": 0,
            "localName": "body",
            "nodeId": 4,
            "nodeName": "BODY",
            "nodeType": 1,
            "nodeValue": "",
            "parentId": 2
         } ],
         "frameId": "B6EA6E565320F0C5275CE9C4E39C7722",
         "localName": "html",
         "nodeId": 2,
         "nodeName": "HTML",
         "nodeType": 1,
         "nodeValue": "",
         "parentId": 1
      } ],
      "compatibilityMode": "NoQuirksMode",
      "documentURL": "data:,",
      "localName": "",
      "nodeId": 1,
      "nodeName": "#document",
      "nodeType": 9,
      "nodeValue": "",
      "xmlVersion": ""
   }
}
[1667253376.619][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=13) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "awaitPromise": false,
   "expression": "document.readyState",
   "returnByValue": true
}
[1667253376.620][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=13) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "type": "string",
      "value": "complete"
   }
}
[1667253376.620][INFO]: Done waiting for pending navigations. Status: ok
[1667253376.620][DEBUG]: DevTools WebSocket Command: Page.navigate (id=14) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "url": "https://www.google.com"
}
[1667253376.822][DEBUG]: DevTools WebSocket Response: Page.navigate (id=14) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "frameId": "B6EA6E565320F0C5275CE9C4E39C7722",
   "loaderId": "FBDE18F97B28A64B74D95F44623885FC"
}
[1667253376.822][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=15) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "document.URL"
}
[1667253376.830][DEBUG]: DevTools WebSocket Event: Runtime.executionContextsCleared (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.834][DEBUG]: DevTools WebSocket Event: Page.frameStartedLoading (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "frameId": "B6EA6E565320F0C5275CE9C4E39C7722"
}
[1667253376.912][DEBUG]: DevTools WebSocket Event: Runtime.executionContextsCleared (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.912][DEBUG]: DevTools WebSocket Event: Page.frameNavigated (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "frame": {
      "adFrameStatus": {
         "adFrameType": "none"
      },
      "crossOriginIsolatedContextType": "NotIsolated",
      "domainAndRegistry": "google.com",
      "gatedAPIFeatures": [  ],
      "id": "B6EA6E565320F0C5275CE9C4E39C7722",
      "loaderId": "FBDE18F97B28A64B74D95F44623885FC",
      "mimeType": "text/html",
      "secureContextType": "Secure",
      "securityOrigin": "https://www.google.com",
      "url": "https://www.google.com/"
   },
   "type": "Navigation"
}
[1667253376.912][DEBUG]: DevTools WebSocket Event: DOM.documentUpdated (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.912][DEBUG]: DevTools WebSocket Event: Runtime.executionContextCreated (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "context": {
      "auxData": {
         "frameId": "B6EA6E565320F0C5275CE9C4E39C7722",
         "isDefault": true,
         "type": "default"
      },
      "id": 1,
      "name": "",
      "origin": "https://www.google.com",
      "uniqueId": "-8085125782832789288.-7613178339527209685"
   }
}
[1667253376.915][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=15) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "type": "string",
      "value": "https://www.google.com/"
   }
}
[1667253376.915][INFO]: Waiting for pending navigations...
[1667253376.915][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=16) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "1"
}
[1667253376.968][DEBUG]: DevTools WebSocket Event: Page.frameResized (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253376.968][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=16) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "description": "1",
      "type": "number",
      "value": 1
   }
}
[1667253377.106][DEBUG]: DevTools WebSocket Event: Page.frameResized (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253377.106][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=17) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "1"
}
[1667253377.227][DEBUG]: DevTools WebSocket Event: DOM.documentUpdated (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253377.227][DEBUG]: DevTools WebSocket Event: Page.domContentEventFired (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "timestamp": 45290.069367
}
[1667253377.227][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=17) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "description": "1",
      "type": "number",
      "value": 1
   }
}
[63039:259:1031/215617.633307:ERROR:system_services.cc(31)] SetApplicationIsDaemon: Error Domain=NSOSStatusErrorDomain Code=-50 "paramErr: error in user parameter list" (-50)
[1667253377.727][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=18) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "1"
}
[1667253377.734][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=18) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "description": "1",
      "type": "number",
      "value": 1
   }
}
[1667253377.929][DEBUG]: DevTools WebSocket Event: Page.loadEventFired (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "timestamp": 45290.773748
}
[1667253377.929][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=19) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "awaitPromise": false,
   "expression": "document.readyState",
   "returnByValue": true
}
[1667253377.930][DEBUG]: DevTools WebSocket Event: Page.frameStoppedLoading (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "frameId": "B6EA6E565320F0C5275CE9C4E39C7722"
}
[1667253377.942][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=19) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "type": "string",
      "value": "complete"
   }
}
[1667253377.942][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=20) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "1"
}
[1667253377.950][DEBUG]: DevTools WebSocket Response: Runtime.evaluate (id=20) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "result": {
      "description": "1",
      "type": "number",
      "value": 1
   }
}
[1667253377.950][INFO]: Done waiting for pending navigations. Status: ok
[1667253377.950][INFO]: [b0a83eb86b5a5fc5c478a0a30059d323] RESPONSE Navigate
2022-10-31 21:56:17 INFO Selenium <- {"value":null}
[1667253380.720][DEBUG]: DevTools WebSocket Event: Inspector.detached (session_id=) browser {
   "reason": "target_closed"
}
[62998:30979:1031/215621.524575:ERROR:mcs_client.cc(707)]   Error code: 500  Error message: Authentication Failed.
[62998:30979:1031/215621.524661:ERROR:mcs_client.cc(709)] Failed to log in to GCM, resetting connection.
2022-10-31 21:56:22.613 Google Chrome Helper[63039:651295] In -[NSApplication(NSQuietSafeQuit) _updateCanQuitQuietlyAndSafely], _LSSetApplicationInformationItem(NSCanQuitQuietlyAndSafely) returned error -50
2022-10-31 21:56:22 INFO Selenium -> POST session/b0a83eb86b5a5fc5c478a0a30059d323/url
2022-10-31 21:56:22 INFO Selenium    >>> http://127.0.0.1:9515/session/b0a83eb86b5a5fc5c478a0a30059d323/url | {"url":"https://example.com"}
2022-10-31 21:56:22 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"29"}
[1667253382.959][INFO]: [b0a83eb86b5a5fc5c478a0a30059d323] COMMAND Navigate {
   "url": "https://example.com"
}
[1667253382.960][INFO]: resolved localhost to ["127.0.0.1","::1"]
[1667253382.961][DEBUG]: DevTools WebSocket Command: Page.addScriptToEvaluateOnNewDocument (id=21) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "source": "(function () {window.cdc_adoQpoasnfa76pfcZLmcfl_Array = window.Array;window.cdc_adoQpoasnfa76pfcZLmcfl_Promise = window.Promise;window.cdc_adoQpoasnfa76pfcZLmcfl_Symbol = window.Symbol;}) ();"
}
[1667253382.962][DEBUG]: DevTools WebSocket Command: Runtime.evaluate (id=22) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "expression": "(function () {window.cdc_adoQpoasnfa76pfcZLmcfl_Array = window.Array;window.cdc_adoQpoasnfa76pfcZLmcfl_Promise = window.Promise;window.cdc_adoQpoasnfa76pfcZLmcfl_Symbol = window.Symbol;}) ();"
}
[1667253382.962][DEBUG]: DevTools WebSocket Command: Log.enable (id=23) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253382.962][DEBUG]: DevTools WebSocket Command: Target.setAutoAttach (id=24) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
   "autoAttach": true,
   "flatten": true,
   "waitForDebuggerOnStart": false
}
[1667253382.962][DEBUG]: DevTools WebSocket Command: Page.enable (id=25) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253382.962][DEBUG]: DevTools WebSocket Command: Page.enable (id=26) (session_id=C2D1A99FB6AB4109026A0614E82713C0) B6EA6E565320F0C5275CE9C4E39C7722 {
}
[1667253382.963][DEBUG]: DevTools WebSocket Response:  (id=21) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
[1667253382.963][DEBUG]: DevTools WebSocket Response:  (id=22) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
[1667253382.963][DEBUG]: DevTools WebSocket Response:  (id=23) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
[1667253382.963][DEBUG]: DevTools WebSocket Response:  (id=24) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
[1667253382.963][DEBUG]: DevTools WebSocket Response:  (id=25) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
[1667253382.965][DEBUG]: DevTools WebSocket Response:  (id=26) (session_id=) browser {"code":-32001,"message":"Session with given id not found."}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-31T21:57:22.961770 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9515
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9515 (Connection refused - connect(2) for "127.0.0.1" port 9515)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9515 (Connection refused - connect(2) for "127.0.0.1" port 9515)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9515 (Connection refused - connect(2) for "127.0.0.1" port 9515)
D, [2022-10-31T21:57:32.969231 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T21:57:32.969345 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : ["sending TERM"]
D, [2022-10-31T21:57:32.969472 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : ["polling 20 seconds for exit"]
D, [2022-10-31T21:57:32.969602 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T21:57:33.072024 #62989] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd5f6acb268 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9515", "--verbose"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd5f6acb128 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=62995> : [{:pid=>62995, :status=>#<Process::Status: pid 62995 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Failed to open TCP connection to 127.0.0.1:9515 (Connection refused - connect(2) for "127.0.0.1" port 9515) (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Connection refused - connect(2) for "127.0.0.1" port 9515 (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-ruby-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/driver.rb:143:in `get'
        from test_selenium.rb:29:in `recreate_issue'
        from test_selenium.rb:34:in `<main>'
C02W63XEHTD6:selenium-ruby-net-read-timeout adambons$ 