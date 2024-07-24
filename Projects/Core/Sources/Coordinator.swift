//
//  Coordinator.swift
//  Core
//
//  Created by 유지호 on 7/23/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

public protocol Coordinator: ObservableObject {
    associatedtype Destination: Sceneable
    
    var path: NavigationPath { get set }
    var sheet: Destination? { get set }
    var fullScreenCover: Destination? { get set }
    
    func push(_ destination: Destination)
    func pop()
    func popToRoot()
    
    func present(_ destination: Destination)
    func fullScreenCover(_ destination: Destination)
    func dismiss()
}

public extension Coordinator {
    
    var container: DIContainer { DIContainer.shared }
    
    func push(_ destination: Destination) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    
    func present(_ destination: Destination) {
        sheet = destination
    }
    
    func fullScreenCover(_ destination: Destination) {
        fullScreenCover = destination
    }
     
    func dismiss() {
        sheet = nil
        fullScreenCover = nil
    }
    
}
