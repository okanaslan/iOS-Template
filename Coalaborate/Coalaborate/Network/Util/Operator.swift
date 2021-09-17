//
//  Operator.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

class Operator {
    static let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(Formatter.dateFormatter)
        return decoder
    }()

    static let encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dataEncodingStrategy = .base64
        return encoder
    }()
}
