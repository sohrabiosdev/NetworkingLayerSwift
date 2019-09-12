//
//  Result.swift
//  NetworkingLayer
//
//  Created by Sohrab on 12/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
}
