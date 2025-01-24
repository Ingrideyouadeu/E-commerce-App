//
//  FruitCard.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-04.
//

import SwiftUI

let images: FruitModel = FruitModel(id:1, title: .apple, image:"apple",price:"3.44$", color:"1")
struct FruitCard: View {
    let fruit: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title.rawValue)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                Text(fruit.price)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150,alignment:.center)
            .background(Color(fruit.color))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color:.gray, radius: 10, x:5 , y:5)
            .padding()
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 110)
                .shadow(color:.gray.opacity(0.5),radius: 5 , x: 5, y: 5)
                .offset(y:60)
        }.frame(width:175 , height:250, alignment:.center)
    }
}

#Preview {
    FruitCard(fruit: images)
}
