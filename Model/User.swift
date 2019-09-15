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
    let company: Company
    
}

struct UsersList: Decodable {
    let users: [User]
}

extension User: Decodable {
    
    enum UserKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case username = "username"
        case email = "email"
        case phone = "phone"
        case company = "company"
    }
    
    init(from decoder: Decoder) throws {
        let usersContainer = try decoder.container(keyedBy: UserKeys.self)
        
        id = try usersContainer.decode(Int.self, forKey: .id)
        name = try usersContainer.decode(String.self, forKey: .name)
        username = try usersContainer.decode(String.self, forKey: .username)
        email = try usersContainer.decode(String.self, forKey: .email)
        phone = try usersContainer.decode(String.self, forKey: .phone)
        company = try usersContainer.decode(Company.self, forKey: .company)
    }
}
