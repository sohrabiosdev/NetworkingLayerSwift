//
//  HTTPNetworkRequest.swift
//  NetworkingLayer
//
//  Created by Sohrab on 08/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import UIKit
import Foundation

public typealias HTTPParameters = [String: Any]?
public typealias HTTPHeaders = [String: Any]?

struct HTTPNetworkRequest {
    
    /// Set the body, method, headers, and paramaters of the request

    static func configureHTTPRequest(from route: HTTPNetworkRoute,
                                     include headers: HTTPHeaders,
                                     contains body: Data?,
                                     and method: HTTPMethod) throws -> URLRequest {
        
        guard let url = URL(string: "\(Constants.BaseURL)\(route.rawValue)") else {throw HTTPNetworkError.missingURL}
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
        request.httpMethod = method.rawValue
        request.httpBody = body
        
        try configureHeaders(headers: headers, request: &request)
        
        return request
    }
    
    static func configureHeaders(headers: HTTPHeaders,
                                 request: inout URLRequest) throws {
        do {
            
            if request.value(forHTTPHeaderField: "Content-Type") == nil {
                request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
                
            }
        }
        
    }
}
