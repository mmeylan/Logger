//
//  Logger.swift
//  Logger
//
//  Created by Mathieu Meylan on 14/01/15.
//  Copyright (c) 2015 Mathieu Meylan. All rights reserved.
//

import UIKit

class Logger: NSObject {
    
    class func debug(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        #if DEBUG
            self.__log__("DEBUG  [\(fileName.lastPathComponent.stringByDeletingPathExtension).\(functionName):\(line)]: "+message)
        #endif
    }
    
    class func notice(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__("NOTICE [\(fileName.lastPathComponent.stringByDeletingPathExtension).\(functionName):\(line)]: "+message)
    }
    
    class func warn(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__("WARN   [\(fileName.lastPathComponent.stringByDeletingPathExtension).\(functionName):\(line)]: "+message)
    }
    
    class func error(message: String, fileName: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        self.__log__("ERROR  [\(fileName.lastPathComponent.stringByDeletingPathExtension).\(functionName):\(line)]: "+message)
    }

    private class func __log__(message: String) {
        NSLog(message)
    }
}
