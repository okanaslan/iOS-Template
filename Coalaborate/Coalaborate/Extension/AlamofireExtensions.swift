//
//  AlamofireExtensions.swift
//  Coalaborate
//
//  Created by Okan Aslan on 17.07.2021.
//

import Alamofire
import Foundation

extension DataRequest {
    @discardableResult public func responseJSON<T: BasicResponseProtocol>(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (T) -> Void
    ) -> Self {
        return responseData { data in
            switch data.result {
            case let .success(result):
                do {
                    let response = try Operator.decoder.decode(T.self, from: result)
                    completionHandler(response)
                } catch {
                    print("error: \(error)")
                    let status = Status(success: false, reason: "DECODE_FAILED")
                    let baseResponse = BaseResponse(status: status)
                    let statusData = try? Operator.encoder.encode(baseResponse)
                    let res = try? Operator.decoder.decode(T.self, from: statusData!)
                    completionHandler(res!)
                }
            case let .failure(error):
                let status = Status(success: false, reason: error.localizedDescription)
                do {
                    let baseResponse = BaseResponse(status: status)
                    let statusData = try Operator.encoder.encode(baseResponse)
                    guard let res = try? Operator.decoder.decode(T.self, from: statusData) else {
                        return
                    }
                    completionHandler(res)
                } catch {
                    print("error: \(error)")
                }
            }
        }
    }
}
