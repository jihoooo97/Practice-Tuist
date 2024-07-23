//
//  Coordinator.swift
//  Core
//
//  Created by 유지호 on 7/23/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

open class Coordinator<S: Sceneable>: ObservableObject {
    
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: S?
    @Published public var fullCover: S?
    
    
    public init() { }
    
    
    open func push(_ scene: S) {
        path.append(scene)
    }
    
    open func pop() {
        path.removeLast()
    }
    
    open func popToRoot() {
        path.removeLast(path.count)
    }
    
    open func present(_ scene: S) {
        sheet = scene
    }
    
    open func fullCover(_ scene: S) {
        fullCover = scene
    }
     
    open func dismiss() {
        sheet = nil
        fullCover = nil
    }
    
}
