//
//  Logger.swift
//  Logger
//
//  Created by Mathieu Meylan on 14/01/15.
//  The MIT License (MIT)
//
//  Copyright (c) 2014 Mathieu Meylan
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
//  associated documentation files (the "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions
//  of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
//  ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import UIKit

class Logger: NSObject {
    
    class func debug(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        #if DEBUG
            self.__log__(message, "DEBUG", fileName, functionName, line)
        #endif
    }
    
    class func notice(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__(message, "NOTICE", fileName, functionName, line)
    }
    
    class func warn(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__(message, "WARN", fileName, functionName, line)
    }
    
    class func error(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__(message, "ERROR", fileName, functionName, line)
    }

    private class func __log__(message: String, _ header:String, _ fileName: String, _ functionName: String , _ line: Int) {
        NSLog("\(header) [\(fileName.lastPathComponent.stringByDeletingPathExtension).\(functionName):\(line)]: "+message)
    }
}
