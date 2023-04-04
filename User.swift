//
//  User.swift
//  Grayhat Project
//
//  Created by Mac on 01/04/2023.
//

import Foundation

struct User : Identifiable{
    var id: String = UUID().uuidString
    var name : String
    var surname : String
}
