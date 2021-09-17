//
//  BaseResponse.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

struct BaseResponse: BasicResponseProtocol {
    typealias Data = EmptyData

    var status: Status
    var data: EmptyData?

    init(status: Status) {
        self.status = status
    }
}

struct EmptyData: Codable {}
