//
//  HomeView.swift
//  SwiftUI_Uber
//
//  Created by Rakesh Kumar on 14/08/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // ZStack use for top of each other
        ZStack(alignment: .top) {
            UberMapViewRepresentable().ignoresSafeArea()
            
            LocationSearchActivationView()
                .padding(.top, 72)
            
            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
