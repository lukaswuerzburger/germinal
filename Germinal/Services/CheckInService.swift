//
//  CheckInService.swift
//  Germinal
//
//  Created by Mac Beta on 6/7/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import Foundation

class CheckInService {
    
    static let shared = CheckInService()
    
    func checkIn(_ completion: @escaping (Bool) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(false)
        }
    }
}
