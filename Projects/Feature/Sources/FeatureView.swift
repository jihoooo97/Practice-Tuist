//
//  FeatureView.swift
//  Feature
//
//  Created by 유지호 on 6/21/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI
import Services

public struct FeatureView: View {
    private let someService: SomeService
    
    @State private var number: String = "버튼을 눌러 숫자를 갱신하세요."
    
    public init(someService: SomeService) {
        self.someService = someService
    }
    
    public var body: some View {
        VStack {
            Text(number)
            
            Button("갱신하기") {
                number = someService.fetchNumber()
            }
        }
    }
}
