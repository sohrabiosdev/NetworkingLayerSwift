//
//  Users.swift
//  NetworkingLayer
//
//  Created by Sohrab on 12/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import UIKit

struct UserServices {

    static let shared = UserServices()
    
    let userSession = URLSession(configuration: .default)
    
    func getUsers(_ completion: @escaping (Result<[User]>) -> ()) {

        do {
            let request = try HTTPNetworkRequest.configureHTTPRequest(from: .getUsers, include: nil, contains: nil, and: .get)
            print("REQUEST SENT = \(request)")
            userSession.dataTask(with: request) { (data, res, err) in

                if let response = res as? HTTPURLResponse, let unwrappedData = data {

                    let result = HTTPNetworkResponse.handleNetworkResponse(for: response)
                    
                    switch result {

                    case .success:
                        let result = try? JSONDecoder().decode([User].self, from: unwrappedData)
                        completion(Result.success(result!))
                    case .failure:
                        completion(Result.failure(HTTPNetworkError.decodingFailed))
                    }
                }
                }.resume()
        } catch {

            completion(Result.failure(HTTPNetworkError.badRequest))
        }
        
    }
}
