//
//  Petition.swift
//  Project7Codable
//
//  Created by James Daniel Malvern on 01/05/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import Foundation

// this is our custom type that replaces String
// our array of petitions will be populated with these
// Codable makes the whole JSON thing easier
// We download JSON from API, convert to Swift data object,
// then convert it to an array of petition instances
struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
