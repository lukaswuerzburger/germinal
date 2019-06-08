//
//  Person.swift
//  Germinal
//
//  Created by Mac Beta on 6/7/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    var id: Int
    var email: String
    var displayName: String
    var lastCheckIn: Date
}

