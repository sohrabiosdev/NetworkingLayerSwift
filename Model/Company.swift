//
//  Company.swift
//  NetworkingLayer
//
//  Created by Sohrab on 12/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import Foundation

struct Company {
    let name: String
    let catchPhrase: String
    let bs: String
}

extension Company: Decodable {
    enum CompanyKeys: String, CodingKey {
        case name = "name"
        case catchPhrase = "catchPhrase"
        case bs = "bs"
    }
    
    init(from decoder: Decoder) throws {
        let companiesContainer = try decoder.container(keyedBy: CompanyKeys.self)
        
        name = try companiesContainer.decode(String.self, forKey: .name)
        catchPhrase = try companiesContainer.decode(String.self, forKey: .catchPhrase)
        bs = try companiesContainer.decode(String.self, forKey: .bs)
    }
}
