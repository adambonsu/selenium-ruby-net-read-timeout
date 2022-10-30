# Activity

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