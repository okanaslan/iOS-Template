//
//  BasicResponseProtocol.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

public protocol BasicResponseProtocol: Codable {
    associatedtype Data: Codable

    var status: Status { get }
    var data: Data? { get }
}
