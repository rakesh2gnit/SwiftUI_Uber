//
//  SwiftUI_UberApp.swift
//  SwiftUI_Uber
//
//  Created by Rakesh Kumar on 14/08/24.
//

import SwiftUI

@main
struct SwiftUI_UberApp: App {
    
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
