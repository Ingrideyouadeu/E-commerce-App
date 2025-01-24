//
//  NearYouDetailView.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-04.
//

import SwiftUI

struct NearYouDetailView: View {
    var Place: places
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(Place.image)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            
            Spacer()
            Text("\(Place.name)")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
            
            Text("Opening Hours: \(Place.time)")
                .padding(.horizontal)
            
            Text("Rating: \(Place.rating)")
                .padding(.horizontal)
            
            Text("Description")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    NearYouDetailView(Place: places(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"))
}
