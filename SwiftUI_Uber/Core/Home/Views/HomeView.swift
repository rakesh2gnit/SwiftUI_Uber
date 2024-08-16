//
//  HomeView.swift
//  SwiftUI_Uber
//
//  Created by Rakesh Kumar on 14/08/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        // ZStack use for top of each other
        ZStack(alignment: .top) {
            UberMapViewRepresentable().ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            MapViewActionButton(showLocationSeachView:
            $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
