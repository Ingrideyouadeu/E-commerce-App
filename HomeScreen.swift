//
//  HomeScreen.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-04.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading,spacing: 10){
                HStack{
                    Image(systemName:"line.3.horizontal")
                    Spacer()
                    Image(systemName:"cart.badge.plus")
                }
                .font(.system(.title))
                
                Text("Hey")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Find fresh fruits that you want")
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.30))
                    .overlay{
                        HStack{
                            Image(systemName:"magnifyingglass")
                            
                            Text("Search Fresh Fruits")
                                .foregroundStyle(.gray)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }.padding()
                    }.frame(width: 350,height:50 , alignment: .center)
                //Top Selling
                
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
                //view -TopSellingView()
                TopSelling()
                
                //Near You
                
                Text("Near You")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                //view -TopSellingView()
                NearYou()
                Spacer()
            
            }.padding()
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    HomeScreen()
}
