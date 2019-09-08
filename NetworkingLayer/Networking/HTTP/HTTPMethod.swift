//
//  HTTPMethod.swift
//  NetworkingLayer
//
//  Created by Sohrab on 08/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

// HTTP Methods we might make throughout the development of your app.
import UIKit

public enum HTTPMethod : String {
    case get  = "GET"
    case post = "POST"
    case put  = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}
