//
//  Logger.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

public enum LogLevel: String, CaseIterable {
    case verbose
    case debug
    case info
    case warning
    case error
}

class Logger {
    static func log(level: LogLevel, view: String, message: String, function: String?, line: Int?) {
        print("Error: \(message) \n\tLevel: \(level) \n\tView: \(view) \n\tFunction: \(function ?? "") \n\tLine: \(line ?? -1)")
    }
}
