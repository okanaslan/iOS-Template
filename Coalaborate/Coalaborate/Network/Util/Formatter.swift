//
//  Formatter.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import FormatterKit
import Foundation

class Formatter {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let enUSPosixLocale = Locale(identifier: "en_US_POSIX")
        formatter.locale = enUSPosixLocale
        formatter.calendar = Calendar(identifier: .gregorian)
        return formatter
    }()
}
