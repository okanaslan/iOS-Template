//
//  Status.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

public struct Status: Codable {
    let success: Bool
    let reason: String

    init(success: Bool, reason: String) {
        self.success = success
        self.reason = reason
    }
}
