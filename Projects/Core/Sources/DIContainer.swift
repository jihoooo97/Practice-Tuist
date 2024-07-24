//
//  DIContainer.swift
//  Core
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import Foundation

public final class DIContainer {
    
    public static let shared = DIContainer()
    
    private var factories = [String: () -> Any]()
    
    
    private init() { }
    
    
    public func register<T>(_ serviceType: T.Type, _ object: @escaping () -> T) {
        let key = String(describing: serviceType)
        factories[key] = object
    }
    
    public func resolve<T>(_ serviceType: T.Type) -> T {
        let key = String(describing: serviceType)
        
        guard let factory = factories[key] else {
            preconditionFailure("\(key) should be registered!")
        }
        
        return factory() as! T
    }
    
}
