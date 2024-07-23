//
//  RootFeature.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import Core
import FeatureA
import FeatureB
import FeatureC

import SwiftUI

public struct RootFeatureView: View {
    @StateObject private var tabCoordinator = TabCoordinator()
    @StateObject private var aCoordinator = FeatureACoordinator()
    @StateObject private var bCoordinator = FeatureBCoordinator()
    @StateObject private var cCoordinator = FeatureCCoordinator()
    
    public init() { }
    
    public var body: some View {
        TabView(selection: $tabCoordinator.selection) {
            NavigationStack(path: $aCoordinator.path) {
                FeatureAView()
                    .navigationDestination(for: AScene.self) { scene in
                        aCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $aCoordinator.sheet) { scene in
                        aCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $aCoordinator.fullCover) { scene in
                        aCoordinator.buildScene(scene)
                    }
            }
            .environmentObject(aCoordinator)
            .tag(Tab.a)
            .tabItem {
                Label("A", systemImage: "a.circle")
            }

            NavigationStack(path: $bCoordinator.path) {
                FeatureBView()
                    .navigationDestination(for: BScene.self) { scene in
                        bCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $bCoordinator.sheet) { scene in
                        bCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $bCoordinator.fullCover) { scene in
                        bCoordinator.buildScene(scene)
                    }
            }
            .environmentObject(bCoordinator)
            .tag(Tab.b)
            .tabItem {
                Label("B", systemImage: "b.circle")
            }
            
            NavigationStack(path: $cCoordinator.path) {
                FeatureCView()
                    .navigationDestination(for: CScene.self) { scene in
                        cCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $cCoordinator.sheet) { scene in
                        cCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $cCoordinator.fullCover) { scene in
                        Text("\(scene)")
                        
                        Button("dismiss") {
                            cCoordinator.dismiss()
                        }
                    }
            }
            .environmentObject(cCoordinator)
            .tag(Tab.c)
            .tabItem {
                Label("C", systemImage: "c.circle")
            }
        }
        .sheet(item: $tabCoordinator.sheet) { scene in
            Text("\(scene)")
        }
        .fullScreenCover(item: $tabCoordinator.fullCover) { scene in
            Text("\(scene)")
            
            Button("dismiss") {
                tabCoordinator.dismiss()
            }
        }
    }
}
