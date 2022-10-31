# Ruby - Local Client - 5 second delay between session calls - Net::ReadTimeout: Net::ReadTimeout with #<TCPSocket:(closed)>

## What is happening
* Using Ruby Binding for chromedriver (Local Client), navigate to a url ('https://google.com'), wait 5 seconds, then attempt to navigate to a different url ('https://example.com) => Net::ReadTimeout error

## Expected behaviour
* Attempt to navigate to a different url successfully loads the webpage

## Environment
* Browser: Chrome Version 107.0.5304.87
* Chromedriver: ChromeDriver 107.0.5304.62 (1eec40d3a5764881c92085aaee66d25075c159aa-refs/branch-heads/5304@{#942})
* Language Bindings: Ruby 'selenium-webdriver' gem, version '4.5.0'
* Ruby: 3.0.0
* OS: macOS Monterey version 12.5
  - Processor 2.9 GHz Quad-Core Intel Core i7
  - Memory 16GB 2133 MHz LPDDR3
  - Graphics Intel HD Graphics 630 1536 MB

## What I have already tried (and did not work):
* Setting client (Selenium::WebDriver::Remote::Http::Default.new) to 120 (seconds)
* Using the latest ruby version: 3.0.0
* Using the latest selenium webdriver ruby bindings gem: 4.5.0
* Replacing Net::HTTP with another HTTP client (like Curb): http://code.google.com/p/selenium/wiki/RubyBindings#Using_Curb_or_your_own_HTTP_client


## Set up test environment
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

## Execute Selenium test script
* Loads a chrome browser and visits google.com
* Delay of 5 seconds (by default) between url calls
* Attempts to visit example.com => Net::ReadTimeout
* Delay of 0 seconds at the end of the test to see the second page loaded
* Note: Via the command line you can pass in a Delay value between the url calls and a Delay at the end of the test
    * e.g `bundle exec ruby -d test_selenium.rb 0 2` # 0 delay between url calls and 2 second delay at the end to see the second page loaded
```
bundle exec ruby -d test_selenium.rb
```


## Gemfile
```
# frozen_string_literal: true

source 'https://rubygems.org'

gem 'selenium-webdriver', '4.5.0'
gem 'webdrivers', '5.2.0'
```

## test_selenium.rb
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
    @driver = Selenium::WebDriver.for :chrome, :capabilities => options
end

def recreate_issue(delay_between_calls)
  driver.get 'http://www.google.com'
  sleep(delay_between_calls)
  driver.get 'http://example.com'
end

Selenium::WebDriver.logger.level = :debug
register_chrome_browser
recreate_issue(delay_between_calls)
sleep delay_after_test
driver.quit
```


## Logs
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