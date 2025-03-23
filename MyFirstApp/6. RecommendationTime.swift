//
//  Recommendation Time.swift
//  MyFirstApp
//
//  Created by Dyhe Annura Husra on 23/03/25.
//
import SwiftUI

struct RecomenndationTime : View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.welcome2Bg)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Spacer()
                    Text("RECOMMENDATION TIME")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(30)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.redLabel)
                            .frame(width: 350, height: 150)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                        
                        VStack(spacing: 10) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.greenLabel)
                                    .frame(width:170, height: 40)
                                Spacer()
                                
                                
                                Text("10:00 - 10:30")
                                    .multilineTextAlignment( .center)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            VStack(alignment: .leading, spacing: 5) {
                                HStack (spacing: 20){
                                    Text("Sesion :")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                    
                                    Text("1")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                }
                                HStack(spacing: 20) {
                                    Text("Study Duration :")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                    
                                    Text("25 minutes")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                }
                                HStack(spacing: 20) {
                                    Text("Break Duration :")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                    
                                    Text("5 minutes")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                      
                    }
                    
                    Spacer()
                    Spacer()
                    
                    Button("Continue", action: {})
                        .multilineTextAlignment( .center)
                        .frame(width: 300, height: 50)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(Color.redLabel)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                        .padding(.bottom,10)
                       
                      
                    Button("Others recommendation time", action: {})
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
                }
            }
        }
    }
}
    
    
    #Preview {
        RecomenndationTime()
    }

