//
//  FeatureAView.swift
//  Feature
//
//  Created by 유지호 on 6/21/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public struct FeatureAView: View {
    @EnvironmentObject private var coordinator: FeatureACoordinator
//    private let someService: SomeService
//    
//    @State private var number: String = "버튼을 눌러 숫자를 갱신하세요."
//    
//    public init(someService: SomeService) {
//        self.someService = someService
//    }
    public init() { }
    
    public var body: some View {
        VStack {
            Button("push") {
                coordinator.push(.aDetail)
            }
            
            Button("sheet") {
                coordinator.present(.sheet)
            }
            
            Button("fullScreenCover") {
                coordinator.fullCover(.fullScreenCover)
            }
        }
    }
}
