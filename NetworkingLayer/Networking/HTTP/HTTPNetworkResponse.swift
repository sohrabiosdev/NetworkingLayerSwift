//
//  HTTPNetworkResponse.swift
//  NetworkingLayer
//
//  Created by Sohrab Hussain on 9/8/19.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import  Foundation

struct HTTPNetworkResponse {
    // Properly checks and handles the status code of the response
    static func handleNetworkResponse(for response: HTTPURLResponse?) -> Result<String>{
        
        guard let res = response else { return Result.failure(HTTPNetworkError.UnwrappingError.rawValue as! Error)}
        
        switch res.statusCode {
        case 200...299: return Result.success(HTTPNetworkError.success.rawValue)
        case 401: return Result.failure(HTTPNetworkError.authenticationError.rawValue as! Error)
        case 400...499: return Result.failure(HTTPNetworkError.badRequest.rawValue as! Error)
        case 500...599: return Result.failure(HTTPNetworkError.serverSideError.rawValue as! Error)
        default: return Result.failure(HTTPNetworkError.failed.rawValue as! Error)
        }
    }
}
