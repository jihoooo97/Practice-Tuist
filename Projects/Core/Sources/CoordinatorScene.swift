//
//  CoordinatorScene.swift
//  Core
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

public typealias Sceneable = Identifiable & Hashable

public enum Tab {
    case a
    case b
    case c
}

public enum AppScene: Sceneable {
    case a
    case b
    case c
    
    public var id: String { "\(self)" }
}

public enum AScene: Sceneable {
    case a
    case aDetail
    case sheet
    case fullScreenCover
    
    public var id: String { "\(self)" }
}

public enum BScene: Sceneable {
    case b
    case bDetail
    case sheet
    case fullScreenCover
    
    public var id: String { "\(self)" }
}

public enum CScene: Sceneable {
    case c
    case cDetail
    case sheet
    case fullScreenCover
    
    public var id: String { "\(self)" }
}
