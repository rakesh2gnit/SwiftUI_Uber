//
//  MapViewActionButton.swift
//  SwiftUI_Uber
//
//  Created by Rakesh Kumar on 14/08/24.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSeachView: Bool
    var body: some View {
        Button {
            withAnimation(.spring()) {
                showLocationSeachView.toggle()
            }
        } label: {
            Image(systemName: showLocationSeachView ? "arrow.left" : "line.3.horizontal")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MapViewActionButton(showLocationSeachView: .constant(true))
}
