//
//  User.swift
//  NetworkingLayer
//
//  Created by Sohrab on 12/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import Foundation

struct User {
    
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    
}

struct UsersList: Decodable {
    let users: [User]
}

extension User: Decodable {
    
    enum UserKeys: String, CodingKey {
        case id = "id"
        case username = "username"
        case email = "email"
        case phone = "phone"
    }
    
//    init(from decoder: Decoder) throws {
//
//    }
}
