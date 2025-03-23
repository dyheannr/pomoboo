//
//  AvailableHours.swift
//  MyFirstApp
//
//  Created by Dyhe Annura Husra on 23/03/25.
//
import SwiftUI

struct AvailableHours: View {
    var body: some View {
        ZStack {
            Image("backgroundAvailable")
                .ignoresSafeArea()
            
            VStack(spacing: 15){
                Spacer()
                Text("You have")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
                ZStack{
                    Rectangle()
                        .fill(Color.white.opacity(0.85))
                        .frame(width: 230 , height: 80)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    Text("5 hours")
                        .font(.system(size: 48))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    
                }
                
                // Time Slots List
                ZStack{
                    Rectangle()
                        .fill(Color.white.opacity(0.85))
                        .frame(width: 280 , height: 80)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 10, x: 5, y: 5)
                        .padding(.vertical)
                    VStack(alignment: .leading, spacing: 10) {
                        HStack (spacing: 20){
                            Circle()
                                .fill(Color("redButton"))
                                .frame(width: 8, height: 8)
                            Text("Total Free Time :")
                                .font(.callout)
                                .foregroundColor(.black)
                
                            Text("8 hours")
                                .font(.callout)
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 20) {
                            Circle()
                                .fill(Color("redButton"))
                                .frame(width: 8, height: 8)
                            Text("Total Activity Time :")
                                .font(.callout)
                                .foregroundColor(.black)
                     
                            Text("8 hours")
                                .font(.callout)
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                }
                Spacer()// Next Button
                Spacer()
                Button("Continue >>", action: {})
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 24))
                
                
                Spacer()
            }
        }
    }
}
 

#Preview {
    AvailableHours()
        }

