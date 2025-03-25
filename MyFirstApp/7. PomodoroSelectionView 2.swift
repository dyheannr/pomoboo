//
//  PomodoroSelectionView.swift
//  MyFirstApp
//
//  Created by Ahmad Kurniawan Ibrahim on 19/03/25.
//

import SwiftUI

struct PomodoroSelectionView3: View {
    let sessions: [PomodoroSession] = [
        PomodoroSession(time: "10:00 - 10:30", sessionNumber: 1, studyDuration: 25, breakDuration: 5),
        PomodoroSession(time: "14:30 - 15:25", sessionNumber: 2, studyDuration: 75, breakDuration: 15),
        PomodoroSession(time: "15:30 - 15:55", sessionNumber: 1, studyDuration: 25, breakDuration: 5),
        PomodoroSession(time: "21:00 - 22:30", sessionNumber: 3, studyDuration: 75, breakDuration: 5)
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Image(.backgorundSessions)
                    .resizable()
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                            Text("Back")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.top, 50)
                        .padding(.horizontal)
                        
                        Text("Choose your focus time!")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .padding(.horizontal)
                        
                        
                        Text("Pick your pomodoro schedule")
                            .font(.caption)
                            .foregroundColor(.black)
                            .padding(6)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        VStack{
                            Spacer()
                            Spacer()
                            Text("Sessions")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            ForEach(sessions) { session in
                                SessionCard(session: session)
                                    .padding(.bottom, 20)
                            }
                            
                            Spacer()
                            Spacer()
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
    
    struct PomodoroSession: Identifiable {
        let id = UUID()
        let time: String
        let sessionNumber: Int
        let studyDuration: Int
        let breakDuration: Int
    }
    
    struct SessionCard: View {
        let session: PomodoroSession
        
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 350, height: 110)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(session.time)
                        .font(.headline)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.horizontal)
                        .padding(.top, 10)
                    
                    Text("Session         : \(session.sessionNumber)")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.horizontal)
                    
                    Text("Study Duration : \(session.studyDuration) minutes")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding(.horizontal)
                    
                    
                    
                    HStack {
                        Text("Break Duration : \(session.breakDuration) Minutes")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                            .padding(.horizontal)
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.greenLabel)
                                .frame(width: 80, height: 20)
                            Text("Choose >")
                                .foregroundColor(.black)
                                .font(.system(size: 14))
                        }
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }.padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    PomodoroSelectionView3()
}
