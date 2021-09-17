//
//  Analytics.swift
//  Coalaborate
//
//  Created by Okan Aslan on 18.07.2021.
//

import Foundation
import Firebase

class AnalyticsUtil {
    
    static func send(name: String, parameters: [String: Any]?) {
        Analytics.logEvent(name, parameters: parameters)
    }
    
    static func addToUser(property: String, value: String) {
        Analytics.setUserProperty(value, forName: property)
    }
    
    static func markUser(with id: String) {
        Analytics.setUserID(id)
    }
}
