//
//  HTTPNetworkRoutes.swift
//  NetworkingLayer
//
//  Created by Sohrab on 08/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

// You can add as many routes & endpoints

import UIKit

public enum HTTPNetworkRoute: String {
    case getAllPosts = "posts/all"
    case createPost  = "posts/new"
    case editPost    = "posts/:id/edit"
}
