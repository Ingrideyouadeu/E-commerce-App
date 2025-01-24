//
//  OnBoardingScreen.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-03.
//

import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .padding()
                
                
                VStack(alignment:.leading,spacing:10){
                    Text("Order Your Favorite Fruits.")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy.")
                        .font(.system(.title3))
                        .foregroundStyle(.black.opacity(0.7))
                      }
                    
                    Spacer()
                    
                NavigationLink(destination: HomeScreen()){
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width:280,height:60, alignment:.trailing)
                        .overlay{
                            HStack(spacing:10)
                            {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Image(systemName: "chevron.right") //cmd shilft L to search for symbol
                            }.foregroundStyle(.black)
                        }
                    
                    
                      }
                        Spacer()
                    }
            .navigationTitle("")
            .navigationBarHidden(true)
                
            }
        }
        
    }
    
#Preview {
    OnBoardingScreen()
    }
