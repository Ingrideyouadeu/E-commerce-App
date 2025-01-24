//
//  LocationDetailView.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-04.
//

import SwiftUI

struct LocationDetailView: View {
    @State var location1: places
    var body: some View {
        VStack(alignment: .leading, spacing: 25){

            HStack{
                Spacer()
                Image("\(location1.image)")
                    .resizable()
                    .frame(width: 350, height: 300, alignment: .center)
//                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                Spacer()
            }
            Spacer()
            Text(location1.name)
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
            Text("\(location1.rating)\nOpen \(location1.time)")
                .padding(.horizontal)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .foregroundColor(.black.opacity(0.7))
                .padding(.horizontal)
            Spacer()
        }
    }
}
#Preview {
    LocationDetailView(location1: Places)
}

