//
//  HTTPNetworkRoutes.swift
//  NetworkingLayer
//
//  Created by Sohrab on 08/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

// You can add as many routes & endpoints

// API description
/*
 https://jsonplaceholder.typicode.com
 
 
 /posts    100 posts
 /comments    500 comments
 /albums    100 albums
 /photos    5000 photos
 /todos    200 todos
 /users    10 users

 
 
 */
import UIKit

public enum HTTPNetworkRoute: String {
    case getPosts                   = "posts"
    case getComments                = "comments"
}
