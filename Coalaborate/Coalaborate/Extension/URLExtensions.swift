//
//  URLExtensions.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Foundation

extension URL {
    static var baseURL: URL = URL(string: "https://zeromilebackend.herokuapp.com")!
//    static var baseURL: URL = URL(string: "http://192.168.1.175:3000")!
}

extension URL {
    public var queryParameters: [String: String]? {
        guard
            let components = URLComponents(url: self, resolvingAgainstBaseURL: true),
            let queryItems = components.queryItems else { return nil }
        return queryItems.reduce(into: [String: String]()) { result, item in
            result[item.name] = item.value
        }
    }
}
