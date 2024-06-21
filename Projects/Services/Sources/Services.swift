//
//  Services.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import Foundation

open class SomeService {
    
    public init() { }
    
    public func fetchNumber() -> String {
        return "\(Int.random(in: 1...9))"
    }
    
}
