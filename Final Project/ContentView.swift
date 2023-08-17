//
//  ContentView.swift
//  Final Project
//
//  Created by Brianna Silva on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isJournalClicked = false
    @State private var isMotivatedClicked = false
    @State private var isActivitiesClicked = false
    @State private var isMoodTrackerClicked = false
    var body: some View {
        NavigationStack {
            GeometryReader { geo in ZStack {
                Image("Wallpaper")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment:.center)
                VStack (spacing:250){
                    Text("Share Box")
                        .font(.system(size:50))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(height: 12.0)
                        VStack(spacing:30){
                            NavigationLink(destination: Journal()) {
                                Text("Journal Now   ")
                                    .font(.title).foregroundColor(Color.white).bold().padding().background(.black).cornerRadius(25)
                            }
                            NavigationLink(destination: Motivation()) {
                                Text("Motivation   ")
                                    .font(.title).foregroundColor(Color.white).bold().padding().background(.black).cornerRadius(25)
                            }
                            NavigationLink(destination: Activities_()) {
                                Text("Activities   ")
                                    .font(.title).foregroundColor(Color.white).bold().padding().background(.black).cornerRadius(25)
                            }
                            NavigationLink(destination: MoodTracker()) {
                                Text("Mood Tracker   ")
                                    .font(.title).foregroundColor(Color.white).bold().padding().background(.black).cornerRadius(25)
                            }
                            
                        }
                }
                .frame(height: 60.0)
                    
                }
                
               }
            }
        }
        
    }

        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
        
    
