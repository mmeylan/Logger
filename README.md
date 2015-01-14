Logger in Swift
==============

Logger is a simple class that you can use to uniform your logging in your projects. It is designed to print not only the user 
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

***In order for the debug logging to work you need to set the DEBUG preprocessing flag. To do so, edit your target 
build setting: Swift Compiler - Custom flags to add -DDEBUG as shown below:***

![alt tag](https://github.com/Starscream27/Logger/blob/master/DEBUG_flag.png)
