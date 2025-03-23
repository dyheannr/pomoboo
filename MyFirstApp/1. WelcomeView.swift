//
//  WelcomeView.swift
//  MyFirstApp
//
//  Created by Ahmad Kurniawan Ibrahim on 20/03/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            
            Image("backgroundWelcome")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Image ("logoPomoboo")
                    .resizable()
                    
                    .frame(width: 180, height: 160)
                
                Spacer()
                Text("Pomoboo.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.fontBrand)
                    .padding(.bottom, 90)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
