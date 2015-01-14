Logger in Swift
==============

Logger is a simple class that you can use to uniform logging in your projects. It is designed to print not only the user 
message but also the file, function name and line number at which the log was written. Logger differentiates:

- Debug logs
- Notice logs (visible also in release and distribution schemes)
- Warnings
- Errors

How to use
--------------

    Logger.debug("This is only visible when running in debug")
    Logger.warn("This is a warning")
    Logger.error("This is an error")
    Logger.notice("This is always visible")

This code will output:

    2015-01-14 11:24:52.227 Logger[3238:50509] DEBUG  [ViewController.viewDidLoad():16]: This is only visible when running in debug
    2015-01-14 11:24:52.228 Logger[3238:50509] WARN   [ViewController.viewDidLoad():17]: This is a warning
    2015-01-14 11:24:52.228 Logger[3238:50509] ERROR  [ViewController.viewDidLoad():18]: This is an error
    2015-01-14 11:24:52.229 Logger[3238:50509] NOTICE [ViewController.viewDidLoad():19]: This is always visible

***In order for the debug logging to work you need to set the DEBUG preprocessing flag. To do so, edit your target 
build setting: Swift Compiler - Custom flags to add -DDEBUG as shown below:***

![alt tag](https://github.com/Starscream27/Logger/blob/master/DEBUG_flag.png)

Details
--------------

This class is based on NSLog which makes the logging very verbose in my opinion. The following *2015-01-14 11:24:52.227 Logger[3238:50509]* could be simplified or changed. I chose to use NSLog because it is thread safe unlike Swift println (to my last test and this [post](https://twitter.com/olebegemann/status/476460149948043266)). One improvement could be to use println and implement custom locking. This would allow to customize the whole "date - produt name" part.
