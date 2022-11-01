# Activity

## Chromedriver logs introduced
```
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
```
## Updated test script
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test_selenium.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-31 12:12:38 DEBUG Webdrivers Checking current version
2022-10-31 12:12:38 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 12:12:38 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 12:12:38 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 12:12:38 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 12:12:38 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 12:12:38 DEBUG Webdrivers Checking current version
2022-10-31 12:12:38 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 12:12:38 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 12:12:38 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers Checking current version
2022-10-31 12:12:38 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 12:12:38 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 12:12:38 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 12:12:38 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 12:12:38 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 12:12:38 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 12:12:38 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 12:12:38 DEBUG Webdrivers using cached version as latest: 107.0.5304.62
2022-10-31 12:12:38 DEBUG Webdrivers Latest version available: 107.0.5304.62
2022-10-31 12:12:38 DEBUG Webdrivers A working webdriver version is already on the system
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9516
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9517
2022-10-31 12:12:38 DEBUG Selenium Executing Process ["/Users/adambons/.webdrivers/chromedriver", "--port=9518"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-31 12:12:38 DEBUG Selenium polling for socket on ["127.0.0.1", 9518]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9518
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9518
2022-10-31 12:12:39 INFO Selenium -> POST session
2022-10-31 12:12:39 INFO Selenium    >>> http://127.0.0.1:9518/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-31 12:12:39 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-31 12:12:40 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.c7QuUy"},"goog:chromeOptions":{"debuggerAddress":"localhost:54427"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"be0d112eab94422171c5d4c46f5dc11e"}}
2022-10-31 12:12:40 INFO Selenium -> POST session/be0d112eab94422171c5d4c46f5dc11e/url
2022-10-31 12:12:40 INFO Selenium    >>> http://127.0.0.1:9518/session/be0d112eab94422171c5d4c46f5dc11e/url | {"url":"https://www.google.com"}
2022-10-31 12:12:40 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"32"}
2022-10-31 12:12:42 INFO Selenium <- {"value":null}
2022-10-31 12:12:47 INFO Selenium -> POST session/be0d112eab94422171c5d4c46f5dc11e/url
2022-10-31 12:12:47 INFO Selenium    >>> http://127.0.0.1:9518/session/be0d112eab94422171c5d4c46f5dc11e/url | {"url":"https://example.com"}
2022-10-31 12:12:47 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"29"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-31T12:13:47.318992 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9518
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9518 (Connection refused - connect(2) for "127.0.0.1" port 9518)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9518 (Connection refused - connect(2) for "127.0.0.1" port 9518)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9518 (Connection refused - connect(2) for "127.0.0.1" port 9518)
D, [2022-10-31T12:13:57.325856 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T12:13:57.325964 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : ["sending TERM"]
D, [2022-10-31T12:13:57.326691 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : ["polling 20 seconds for exit"]
D, [2022-10-31T12:13:57.326792 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T12:13:57.432948 #27188] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f9c40accec8 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9518"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f9c40accbf8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=27200> : [{:pid=>27200, :status=>#<Process::Status: pid 27200 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Failed to open TCP connection to 127.0.0.1:9518 (Connection refused - connect(2) for "127.0.0.1" port 9518) (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Connection refused - connect(2) for "127.0.0.1" port 9518 (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/driver.rb:143:in `get'
        from test_selenium.rb:28:in `recreate_issue'
        from test_selenium.rb:33:in `<main>'
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ 
```

## Remove remote client - had no affect
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test_selenium.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-31 07:02:43 DEBUG Webdrivers Checking current version
2022-10-31 07:02:43 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 07:02:43 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 07:02:43 DEBUG Webdrivers Checking current version
2022-10-31 07:02:43 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers Checking current version
2022-10-31 07:02:43 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 07:02:43 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 07:02:43 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-31 07:02:43 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-31 07:02:43 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-31 07:02:43 DEBUG Webdrivers Making network call to https://chromedriver.storage.googleapis.com/LATEST_RELEASE_107.0.5304
2022-10-31 07:02:44 DEBUG Webdrivers Get response: #<Net::HTTPOK 200 OK readbody=true>
2022-10-31 07:02:44 DEBUG Webdrivers Latest version available: 107.0.5304.62
2022-10-31 07:02:44 DEBUG Webdrivers A working webdriver version is already on the system
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
2022-10-31 07:02:44 DEBUG Selenium Executing Process ["/Users/adambons/.webdrivers/chromedriver", "--port=9516"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-31 07:02:44 DEBUG Selenium polling for socket on ["127.0.0.1", 9516]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9516
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9516
2022-10-31 07:02:44 INFO Selenium -> POST session
2022-10-31 07:02:44 INFO Selenium    >>> http://127.0.0.1:9516/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-31 07:02:44 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-31 07:02:46 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.CeziK5"},"goog:chromeOptions":{"debuggerAddress":"localhost:59663"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"4faa663f570e919bbeaf0df3c271c142"}}
2022-10-31 07:02:46 INFO Selenium -> POST session/4faa663f570e919bbeaf0df3c271c142/url
2022-10-31 07:02:46 INFO Selenium    >>> http://127.0.0.1:9516/session/4faa663f570e919bbeaf0df3c271c142/url | {"url":"http://www.google.com"}
2022-10-31 07:02:46 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-31 07:02:47 INFO Selenium <- {"value":null}
2022-10-31 07:02:52 INFO Selenium -> POST session/4faa663f570e919bbeaf0df3c271c142/url
2022-10-31 07:02:52 INFO Selenium    >>> http://127.0.0.1:9516/session/4faa663f570e919bbeaf0df3c271c142/url | {"url":"https://example.com/"}
2022-10-31 07:02:52 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-31T07:03:52.948895 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNRESET' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection reset by peer - connect(2) for "127.0.0.1" port 9516
Exception `Errno::ECONNRESET' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9516 (Connection reset by peer - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNRESET' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9516 (Connection reset by peer - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNRESET' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Failed to open TCP connection to 127.0.0.1:9516 (Connection reset by peer - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNRESET' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9516 (Connection reset by peer - connect(2) for "127.0.0.1" port 9516)
D, [2022-10-31T07:04:02.957224 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T07:04:02.957334 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : ["sending TERM"]
D, [2022-10-31T07:04:02.957446 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : ["polling 20 seconds for exit"]
D, [2022-10-31T07:04:02.957531 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : [{:pid=>nil, :status=>nil}]
D, [2022-10-31T07:04:03.058214 #91935] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fb560ad2380 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fb560ad2218 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=91944> : [{:pid=>91944, :status=>#<Process::Status: pid 91944 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Failed to open TCP connection to 127.0.0.1:9516 (Connection reset by peer - connect(2) for "127.0.0.1" port 9516) (Errno::ECONNRESET)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Connection reset by peer - connect(2) for "127.0.0.1" port 9516 (Errno::ECONNRESET)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/driver.rb:143:in `get'
        from test_selenium.rb:28:in `recreate_issue'
        from test_selenium.rb:33:in `<main>'
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ 
```
## Include additional debug to logs
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test_selenium.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-30 12:50:53 DEBUG Webdrivers Checking current version
2022-10-30 12:50:53 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 12:50:53 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 12:50:53 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-30 12:50:53 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-30 12:50:53 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-30 12:50:53 DEBUG Webdrivers Checking current version
2022-10-30 12:50:53 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 12:50:53 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 12:50:53 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers Checking current version
2022-10-30 12:50:53 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 12:50:53 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 12:50:53 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 12:50:53 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-30 12:50:53 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-30 12:50:53 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-30 12:50:53 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 12:50:53 DEBUG Webdrivers using cached version as latest: 107.0.5304.62
2022-10-30 12:50:53 DEBUG Webdrivers Latest version available: 107.0.5304.62
2022-10-30 12:50:53 DEBUG Webdrivers A working webdriver version is already on the system
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
2022-10-30 12:50:53 DEBUG Selenium Executing Process ["/Users/adambons/.webdrivers/chromedriver", "--port=9516"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-30 12:50:53 DEBUG Selenium polling for socket on ["127.0.0.1", 9516]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9516
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9516
2022-10-30 12:50:54 INFO Selenium -> POST session
2022-10-30 12:50:54 INFO Selenium    >>> http://127.0.0.1:9516/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-30 12:50:54 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-30 12:50:56 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.scvUAf"},"goog:chromeOptions":{"debuggerAddress":"localhost:53697"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"f23e9e17ef042f13330379f74bf598cc"}}
2022-10-30 12:50:56 INFO Selenium -> POST session/f23e9e17ef042f13330379f74bf598cc/url
2022-10-30 12:50:56 INFO Selenium    >>> http://127.0.0.1:9516/session/f23e9e17ef042f13330379f74bf598cc/url | {"url":"http://www.google.com"}
2022-10-30 12:50:56 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-30 12:50:57 INFO Selenium <- {"value":null}
2022-10-30 12:51:02 INFO Selenium -> POST session/f23e9e17ef042f13330379f74bf598cc/url
2022-10-30 12:51:02 INFO Selenium    >>> http://127.0.0.1:9516/session/f23e9e17ef042f13330379f74bf598cc/url | {"url":"https://example.com/"}
2022-10-30 12:51:02 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-30T12:53:02.369933 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9516
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
D, [2022-10-30T12:53:12.377892 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : [{:pid=>nil, :status=>nil}]
D, [2022-10-30T12:53:12.377984 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : ["sending TERM"]
D, [2022-10-30T12:53:12.378125 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : ["polling 20 seconds for exit"]
D, [2022-10-30T12:53:12.378223 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : [{:pid=>nil, :status=>nil}]
D, [2022-10-30T12:53:12.478988 #82706] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fd4242c8c88 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fd4242c8b48 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=82714> : [{:pid=>82714, :status=>#<Process::Status: pid 82714 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516) (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Connection refused - connect(2) for "127.0.0.1" port 9516 (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/driver.rb:143:in `get'
        from test_selenium.rb:30:in `recreate_issue'
        from test_selenium.rb:35:in `<main>'
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$
```
## Wait 120s between page loads
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test_selenium.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-30 06:35:05 DEBUG Webdrivers Checking current version
2022-10-30 06:35:05 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 06:35:05 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 06:35:05 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-30 06:35:05 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-30 06:35:05 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-30 06:35:05 DEBUG Webdrivers Checking current version
2022-10-30 06:35:05 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 06:35:05 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 06:35:05 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers Checking current version
2022-10-30 06:35:05 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 06:35:05 DEBUG Webdrivers making System call: ["/Users/adambons/.webdrivers/chromedriver", "--version"]
2022-10-30 06:35:05 DEBUG Webdrivers System call returned: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers Current version of /Users/adambons/.webdrivers/chromedriver is ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})

2022-10-30 06:35:05 DEBUG Webdrivers making System call: ["//Applications/Google Chrome.app/Contents/MacOS/Google Chrome", "--version"]
2022-10-30 06:35:05 DEBUG Webdrivers System call returned: Google Chrome 107.0.5304.87 

2022-10-30 06:35:05 DEBUG Webdrivers Browser version: Google Chrome 107.0.5304.87
2022-10-30 06:35:05 DEBUG Webdrivers /Users/adambons/.webdrivers/chromedriver is already downloaded
2022-10-30 06:35:05 DEBUG Webdrivers using cached version as latest: 107.0.5304.62
2022-10-30 06:35:05 DEBUG Webdrivers Latest version available: 107.0.5304.62
2022-10-30 06:35:05 DEBUG Webdrivers A working webdriver version is already on the system
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
2022-10-30 06:35:05 DEBUG Selenium Executing Process ["/Users/adambons/.webdrivers/chromedriver", "--port=9516"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-30 06:35:05 DEBUG Selenium polling for socket on ["127.0.0.1", 9516]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9516
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9516
2022-10-30 06:35:06 INFO Selenium -> POST session
2022-10-30 06:35:06 INFO Selenium    >>> http://127.0.0.1:9516/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-30 06:35:06 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-30 06:35:07 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.IVRHKt"},"goog:chromeOptions":{"debuggerAddress":"localhost:59847"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"f5c3b829853a3ad9775b66b7e200feab"}}
2022-10-30 06:35:07 INFO Selenium -> POST session/f5c3b829853a3ad9775b66b7e200feab/url
2022-10-30 06:35:07 INFO Selenium    >>> http://127.0.0.1:9516/session/f5c3b829853a3ad9775b66b7e200feab/url | {"url":"http://www.google.com"}
2022-10-30 06:35:07 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-30 06:35:09 INFO Selenium <- {"value":null}
2022-10-30 06:35:14 INFO Selenium -> POST session/f5c3b829853a3ad9775b66b7e200feab/url
2022-10-30 06:35:14 INFO Selenium    >>> http://127.0.0.1:9516/session/f5c3b829853a3ad9775b66b7e200feab/url | {"url":"https://example.com/"}
2022-10-30 06:35:14 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-30T06:37:14.178934 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9516
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
D, [2022-10-30T06:37:24.185224 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : [{:pid=>nil, :status=>nil}]
D, [2022-10-30T06:37:24.185319 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : ["sending TERM"]
D, [2022-10-30T06:37:24.185432 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : ["polling 20 seconds for exit"]
D, [2022-10-30T06:37:24.185527 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : [{:pid=>nil, :status=>nil}]
D, [2022-10-30T06:37:24.287851 #33648] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8c7e2b0cc0 @args=["/Users/adambons/.webdrivers/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8c7e2b0b80 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=33654> : [{:pid=>33654, :status=>#<Process::Status: pid 33654 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516) (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `initialize': Connection refused - connect(2) for "127.0.0.1" port 9516 (Errno::ECONNREFUSED)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `open'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987:in `block in connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:97:in `block in timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/timeout.rb:107:in `timeout'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:985:in `connect'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1596:in `begin_transport'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1547:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1270:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:122:in `block in stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:97:in `block in connect_to_server'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:960:in `start'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:621:in `start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:93:in `connect_to_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:120:in `stop_server'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:65:in `stop'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/service_manager.rb:52:in `block in start'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/platform.rb:154:in `block in exit_hook'
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@selenium-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/driver.rb:143:in `get'
        from test_selenium.rb:30:in `recreate_issue'
        from test_selenium.rb:34:in `<main>'
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ 
```
## Attempt to recreate with selenium driver
Can recreate issue without capybara
## Compare debug logs between machines (personal vs work)
    Personal MBP
    macOS Monterey Version 12.6
        - Processor 2.8 GHz Quad-Core Intel Core i7
        - Memory 16GB 2133 MHz LPDDR3
        - Graphics Intel Iris Plus Graphics 655 1536 MB
     - could not recreate?!!?!? - issue with memory?
    Work MBP
     macOS Monterey Version 12.5
        - Processor 2.9 GHz Quad-Core Intel Core i7
        - Memory 16GB 2133 MHz LPDDR3
        - Graphics Intel HD Graphics 630 1536 MB
    => cannot identify environment diffs between work and personal debug logs 
### Personal
```
MBP-AB:capybara-experiment-net-read-timeout bonsuadam$ bundle exec ruby -d test.rb
Exception `LoadError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/bonsuadam/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/bonsuadam/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/addressable-2.8.1/lib/addressable/idna/native.rb:20 - cannot load such file -- idn
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/bonsuadam/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
2022-10-29 18:54:30 DEBUG Selenium Executing Process ["/Users/bonsuadam/bin/chromedriver", "--port=9515"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/bonsuadam/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-29 18:54:30 DEBUG Selenium polling for socket on ["127.0.0.1", 9515]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9515
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/bonsuadam/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9515
2022-10-29 18:54:30 INFO Selenium -> POST session
2022-10-29 18:54:30 INFO Selenium    >>> http://127.0.0.1:9515/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-29 18:54:30 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-29 18:54:31 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/8t/dw2xb2ys6w9cf07sn1yjvhvw0000gn/T/.com.google.Chrome.IHHNhs"},"goog:chromeOptions":{"debuggerAddress":"localhost:52526"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"d4821ff8c191b4b1d75cb15dbd770f57"}}
2022-10-29 18:54:31 INFO Selenium -> POST session/d4821ff8c191b4b1d75cb15dbd770f57/url
2022-10-29 18:54:31 INFO Selenium    >>> http://127.0.0.1:9515/session/d4821ff8c191b4b1d75cb15dbd770f57/url | {"url":"http://www.google.com"}
2022-10-29 18:54:31 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-29 18:54:32 INFO Selenium <- {"value":null}
2022-10-29 18:54:37 INFO Selenium -> POST session/d4821ff8c191b4b1d75cb15dbd770f57/url
2022-10-29 18:54:37 INFO Selenium    >>> http://127.0.0.1:9515/session/d4821ff8c191b4b1d75cb15dbd770f57/url | {"url":"https://example.com/"}
2022-10-29 18:54:37 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
2022-10-29 18:54:38 INFO Selenium <- {"value":null}
2022-10-29 18:54:38 INFO Selenium -> DELETE session/d4821ff8c191b4b1d75cb15dbd770f57
2022-10-29 18:54:38 INFO Selenium <- {"value":null}
D, [2022-10-29T18:54:38.142356 #8357] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fa96da1b710 @args=["/Users/bonsuadam/bin/chromedriver", "--port=9515"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fa96da1b5f8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=8358> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T18:54:38.158096 #8357] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fa96da1b710 @args=["/Users/bonsuadam/bin/chromedriver", "--port=9515"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fa96da1b5f8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=8358> : ["polling 20 seconds for exit"]
D, [2022-10-29T18:54:38.158396 #8357] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fa96da1b710 @args=["/Users/bonsuadam/bin/chromedriver", "--port=9515"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fa96da1b5f8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=8358> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T18:54:38.259955 #8357] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fa96da1b710 @args=["/Users/bonsuadam/bin/chromedriver", "--port=9515"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fa96da1b5f8 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=8358> : [{:pid=>8358, :status=>#<Process::Status: pid 8358 exit 0>}]
MBP-AB:capybara-experiment-net-read-timeout bonsuadam$ 
```

## Comparing logs - No delay between capybara calls vs 5s delay between capybara calls
### 5s delay between capybara calls
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/addressable-2.8.1/lib/addressable/idna/native.rb:20 - cannot load such file -- idn
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9516
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9517
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9518
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9519
2022-10-29 16:25:13 DEBUG Selenium Executing Process ["/usr/local/bin/chromedriver", "--port=9520"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-29 16:25:13 DEBUG Selenium polling for socket on ["127.0.0.1", 9520]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9520
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9520
2022-10-29 16:25:14 INFO Selenium -> POST session
2022-10-29 16:25:14 INFO Selenium    >>> http://127.0.0.1:9520/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-29 16:25:14 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-29 16:25:17 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.ZrXBAH"},"goog:chromeOptions":{"debuggerAddress":"localhost:61356"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"8623f14a270d38419a3afddde1e17c50"}}
2022-10-29 16:25:17 INFO Selenium -> POST session/8623f14a270d38419a3afddde1e17c50/url
2022-10-29 16:25:17 INFO Selenium    >>> http://127.0.0.1:9520/session/8623f14a270d38419a3afddde1e17c50/url | {"url":"http://www.google.com"}
2022-10-29 16:25:17 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-29 16:25:19 INFO Selenium <- {"value":null}
2022-10-29 16:25:24 INFO Selenium -> POST session/8623f14a270d38419a3afddde1e17c50/url
2022-10-29 16:25:24 INFO Selenium    >>> http://127.0.0.1:9520/session/8623f14a270d38419a3afddde1e17c50/url | {"url":"https://example.com/"}
2022-10-29 16:25:24 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
2022-10-29 16:26:24 INFO Selenium -> DELETE session/8623f14a270d38419a3afddde1e17c50
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-29T16:28:24.583949 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9520
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9520 (Connection refused - connect(2) for "127.0.0.1" port 9520)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9520 (Connection refused - connect(2) for "127.0.0.1" port 9520)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9520 (Connection refused - connect(2) for "127.0.0.1" port 9520)
D, [2022-10-29T16:28:34.588512 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T16:28:34.588620 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : ["sending TERM"]
D, [2022-10-29T16:28:34.588719 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : ["polling 20 seconds for exit"]
D, [2022-10-29T16:28:34.589221 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T16:28:34.690763 #21446] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fe3239729b8 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fe3239728a0 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=21449> : [{:pid=>21449, :status=>#<Process::Status: pid 21449 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        from test.rb:39:in `recreate_timeout'
        from test.rb:44:in `<main>'
```
### 0s delay between capybara calls
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test.rb 0
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/addressable-2.8.1/lib/addressable/idna/native.rb:20 - cannot load such file -- idn
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9516
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9517
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9518
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9519
2022-10-29 16:32:10 DEBUG Selenium Executing Process ["/usr/local/bin/chromedriver", "--port=9520"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-29 16:32:10 DEBUG Selenium polling for socket on ["127.0.0.1", 9520]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9520
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9520
2022-10-29 16:32:11 INFO Selenium -> POST session
2022-10-29 16:32:11 INFO Selenium    >>> http://127.0.0.1:9520/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-29 16:32:11 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-29 16:32:14 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.dn9uOc"},"goog:chromeOptions":{"debuggerAddress":"localhost:61868"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"6e214a161c3b15d0ea076d0c2a1fe35e"}}
2022-10-29 16:32:14 INFO Selenium -> POST session/6e214a161c3b15d0ea076d0c2a1fe35e/url
2022-10-29 16:32:14 INFO Selenium    >>> http://127.0.0.1:9520/session/6e214a161c3b15d0ea076d0c2a1fe35e/url | {"url":"http://www.google.com"}
2022-10-29 16:32:14 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-29 16:32:16 INFO Selenium <- {"value":null}
2022-10-29 16:32:16 INFO Selenium -> POST session/6e214a161c3b15d0ea076d0c2a1fe35e/url
2022-10-29 16:32:16 INFO Selenium    >>> http://127.0.0.1:9520/session/6e214a161c3b15d0ea076d0c2a1fe35e/url | {"url":"https://example.com/"}
2022-10-29 16:32:16 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
2022-10-29 16:32:17 INFO Selenium <- {"value":null}
2022-10-29 16:32:17 INFO Selenium -> DELETE session/6e214a161c3b15d0ea076d0c2a1fe35e
2022-10-29 16:32:17 INFO Selenium <- {"value":null}
D, [2022-10-29T16:32:17.127182 #22165] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8d29b298b0 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8d29b29770 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=22171> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T16:32:17.156224 #22165] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8d29b298b0 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8d29b29770 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=22171> : ["polling 20 seconds for exit"]
D, [2022-10-29T16:32:17.156385 #22165] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8d29b298b0 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8d29b29770 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=22171> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T16:32:17.257642 #22165] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f8d29b298b0 @args=["/usr/local/bin/chromedriver", "--port=9520"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f8d29b29770 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=22171> : [{:pid=>22171, :status=>#<Process::Status: pid 22171 exit 0>}]
```

## Install libdn - noticed an error in the log during set up
```
brew install libidn
gem install idn-ruby -v 0.1.0
```
## updated chromedriver to 107 to match latest chrome 107
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/addressable-2.8.1/lib/addressable/idna/native.rb:20 - cannot load such file -- idn
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
2022-10-29 12:22:28 DEBUG Selenium Executing Process ["/usr/local/bin/chromedriver", "--port=9516"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-29 12:22:28 DEBUG Selenium polling for socket on ["127.0.0.1", 9516]
Starting ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942}) on port 9516
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9516
2022-10-29 12:22:28 INFO Selenium -> POST session
2022-10-29 12:22:28 INFO Selenium    >>> http://127.0.0.1:9516/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-29 12:22:28 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
2022-10-29 12:22:30 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.HcZru2"},"goog:chromeOptions":{"debuggerAddress":"localhost:51489"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"b81d9929e07b6298859de7a94b26becc"}}
2022-10-29 12:22:30 INFO Selenium -> POST session/b81d9929e07b6298859de7a94b26becc/url
2022-10-29 12:22:30 INFO Selenium    >>> http://127.0.0.1:9516/session/b81d9929e07b6298859de7a94b26becc/url | {"url":"http://www.google.com"}
2022-10-29 12:22:30 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-29 12:22:31 INFO Selenium <- {"value":null}
2022-10-29 12:22:36 INFO Selenium -> POST session/b81d9929e07b6298859de7a94b26becc/url
2022-10-29 12:22:36 INFO Selenium    >>> http://127.0.0.1:9516/session/b81d9929e07b6298859de7a94b26becc/url | {"url":"https://example.com/"}
2022-10-29 12:22:36 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
2022-10-29 12:23:36 INFO Selenium -> DELETE session/b81d9929e07b6298859de7a94b26becc
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-29T12:25:36.894769 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9516
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
D, [2022-10-29T12:25:46.904285 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T12:25:46.904451 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : ["sending TERM"]
D, [2022-10-29T12:25:46.904550 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : ["polling 20 seconds for exit"]
D, [2022-10-29T12:25:46.904635 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T12:25:47.005754 #6555] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007f7f04a6e980 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007f7f04a6e868 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=6560> : [{:pid=>6560, :status=>#<Process::Status: pid 6560 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        from test.rb:38:in `recreate_timeout'
        from test.rb:43:in `<main>'
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$
```
## Add debug - chrome has autoupdated from 106 to 107 => need to update chromedriver
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby -d test.rb
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1348 - cannot load such file -- rubygems/defaults/operating_system
Exception `LoadError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/rubygems.rb:1356 - cannot load such file -- rubygems/defaults/ruby
Exception `NameError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/bundler-2.3.24/lib/bundler/rubygems_integration.rb:404 - method `gem' not defined in #<Class:Kernel>
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/addressable-2.8.1/lib/addressable/idna/native.rb:20 - cannot load such file -- idn
Using Ext extension for JSON.
Exception `SyntaxError' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/forwardable/impl.rb:4 - <compiled>: syntax error, unexpected end-of-input
Exception `LoadError' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/websocket-1.2.9/lib/websocket.rb:43 - cannot load such file -- websocket-native
Exception `Errno::EADDRINUSE' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/port_prober.rb:35 - Address already in use - bind(2) for "127.0.0.1" port 9515
2022-10-29 12:02:07 DEBUG Selenium Executing Process ["/usr/local/bin/chromedriver", "--port=9516"]
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/socket_poller.rb:87 - Connection refused
2022-10-29 12:02:07 DEBUG Selenium polling for socket on ["127.0.0.1", 9516]
Starting ChromeDriver 106.0.5249.61 (511755355844955cd3e264779baf0dd38212a4d0-refs/branch-heads/5249@{#569}) on port 9516
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
Exception `IO::EINPROGRESSWaitWritable' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Operation now in progress - connect(2) would block
Exception `Errno::EISCONN' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/socket.rb:1214 - Socket is already connected - connect(2) for 127.0.0.1:9516
2022-10-29 12:02:07 INFO Selenium -> POST session
2022-10-29 12:02:07 INFO Selenium    >>> http://127.0.0.1:9516/session | {"capabilities":{"alwaysMatch":{"browserName":"chrome","goog:chromeOptions":{"args":["--ignore-certificate-errors","--no-sandbox","--disable-gpu","--autoplay-policy=no-user-gesture-required"],"detach":true},"goog:loggingPrefs":{"browser":"ALL"}}}}
2022-10-29 12:02:07 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"247"}
[1667041331.133][WARNING]: This version of ChromeDriver has not been tested with Chrome version 107.
2022-10-29 12:02:11 INFO Selenium <- {"value":{"capabilities":{"acceptInsecureCerts":false,"browserName":"chrome","browserVersion":"107.0.5304.87","chrome":{"chromedriverVersion":"106.0.5249.61 (511755355844955cd3e264779baf0dd38212a4d0-refs/branch-heads/5249@{#569})","userDataDir":"/var/folders/25/flljwbcj0bn2jx9m16dvggr80000gp/T/.com.google.Chrome.mfgv2b"},"goog:chromeOptions":{"debuggerAddress":"localhost:49932"},"networkConnectionEnabled":false,"pageLoadStrategy":"normal","platformName":"mac os x","proxy":{},"setWindowRect":true,"strictFileInteractability":false,"timeouts":{"implicit":0,"pageLoad":300000,"script":30000},"unhandledPromptBehavior":"dismiss and notify","webauthn:extension:credBlob":true,"webauthn:extension:largeBlob":true,"webauthn:virtualAuthenticators":true},"sessionId":"aef3556dfd43f4878967551202b311af"}}
2022-10-29 12:02:11 INFO Selenium -> POST session/aef3556dfd43f4878967551202b311af/url
2022-10-29 12:02:11 INFO Selenium    >>> http://127.0.0.1:9516/session/aef3556dfd43f4878967551202b311af/url | {"url":"http://www.google.com"}
2022-10-29 12:02:11 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"31"}
2022-10-29 12:02:13 INFO Selenium <- {"value":null}
2022-10-29 12:02:18 INFO Selenium -> POST session/aef3556dfd43f4878967551202b311af/url
2022-10-29 12:02:18 INFO Selenium    >>> http://127.0.0.1:9516/session/aef3556dfd43f4878967551202b311af/url | {"url":"https://example.com/"}
2022-10-29 12:02:18 DEBUG Selenium      > {"Accept"=>"application/json", "Content-Type"=>"application/json; charset=UTF-8", "User-Agent"=>"selenium/4.5.0 (ruby macosx)", "Content-Length"=>"30"}
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
2022-10-29 12:03:18 INFO Selenium -> DELETE session/aef3556dfd43f4878967551202b311af
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1583 - Net::ReadTimeout
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Net::ReadTimeout
D, [2022-10-29T12:05:18.376378 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : [{:pid=>nil, :status=>nil}]
Exception `Net::ReadTimeout' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219 - Net::ReadTimeout
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:987 - Connection refused - connect(2) for "127.0.0.1" port 9516
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:989 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1054 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
Exception `Errno::ECONNREFUSED' at /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1591 - Failed to open TCP connection to 127.0.0.1:9516 (Connection refused - connect(2) for "127.0.0.1" port 9516)
D, [2022-10-29T12:05:28.387288 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T12:05:28.387403 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : ["sending TERM"]
D, [2022-10-29T12:05:28.387514 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : ["polling 20 seconds for exit"]
D, [2022-10-29T12:05:28.387616 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : [{:pid=>nil, :status=>nil}]
D, [2022-10-29T12:05:28.489290 #3798] DEBUG -- : #<ChildProcess::Unix::ForkExecProcess:0x00007fcbc14981a0 @args=["/usr/local/bin/chromedriver", "--port=9516"], @started=true, @exit_code=nil, @io=#<ChildProcess::Unix::IO:0x00007fcbc1498038 @stderr=#<IO:<STDOUT>>, @stdout=#<IO:<STDOUT>>>, @cwd=nil, @detach=false, @duplex=false, @leader=true, @environment={}, @pid=3807> : [{:pid=>3807, :status=>#<Process::Status: pid 3807 SIGTERM (signal 15)>}]
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        from test.rb:38:in `recreate_timeout'
        from test.rb:43:in `<main>'
```


## default timeout did not work (Capybara.config.default_max_wait_time = 120)
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby test.rb
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        from test.rb:38:in `recreate_timeout'
        from test.rb:43:in `<main>'
```

## Updating to ruby version 3 did not fix the issue
```
C02W63XEHTD6:capybara-experiment-net-read-timeout adambons$ bundle exec ruby test.rb
/Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:219:in `rbuf_fill': Net::ReadTimeout with #<TCPSocket:(closed)> (Net::ReadTimeout)
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:193:in `readuntil'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/protocol.rb:203:in `readline'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:42:in `read_status_line'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http/response.rb:31:in `read_new'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1557:in `block in transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `catch'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1548:in `transport_request'
        from /Users/adambons/.rvm/rubies/ruby-3.0.0/lib/ruby/3.0.0/net/http.rb:1521:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:118:in `response_for'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/default.rb:77:in `request'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/http/common.rb:59:in `call'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:625:in `execute'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/remote/bridge.rb:93:in `get'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/selenium-webdriver-4.5.0/lib/selenium/webdriver/common/navigation.rb:32:in `to'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/selenium/driver.rb:104:in `visit'
        from /Users/adambons/.rvm/gems/ruby-3.0.0@capybara-experiment-net-read-timeout/gems/capybara-3.37.1/lib/capybara/session.rb:278:in `visit'
        from test.rb:37:in `recreate_timeout'
        from test.rb:42:in `<main>'
```

## Recreated intermittently (50%): recreate_timeout(3)
recreate_timeout(3)
C02W63XEHTD6:capybara-cucumber-experiment-net-read-timeout adambons$ bundle exec ruby test.rb
```
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