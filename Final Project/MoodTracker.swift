//
//  MoodTracker.swift
//  Final Project
//
//  Created by Sathvika Sangoju on 8/17/23.
//

import SwiftUI

struct MoodTracker: View {
    @State private var isSubmitClicked = false
    @State var sliderValue: Double = 5
    @State var selectedDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Color(UIColor(red: 0x6f / 255, green: 0xa3 / 255, blue: 0xde / 255, alpha: 1.0)).ignoresSafeArea(.all)
                VStack(spacing:20){
                    NavigationLink(destination: ContentView()) {
                                        Image("home screen icon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200).frame(height: 100)
                    }
                    Text("mood tracker").font(.system(size:50)).fontWeight(.bold)
                    Text("what is today's mood?").font(.system(size:25)).fontWeight(.bold)
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("date:") }).background(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))).padding(.all).font(.system(size:20)).fontWeight(.bold).cornerRadius(9)
                    Text(
                        String(format: "mood: %.1f", sliderValue)
                    ).font(.system(size:25)).fontWeight(.bold)
                   
                    Slider(value: $sliderValue, in: 1...10, step: 1.0).accentColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))).controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)

                    Button("submit"){
                        isSubmitClicked.toggle()
                    }
                    .font(.system(size:25)).fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black).bold()
                    .tint(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
                    .cornerRadius(9)
                    .buttonStyle(.borderedProminent)
                    
                    var quote: String {
                        if sliderValue == 1.0 {
                            return "even the tiniest spark can ignite a magnificent blaze of positivity within you"
                        } else if sliderValue == 2.0 {
                            return "in the garden of emotions, every bloom, no matter how small, adds to the beauty of your soul"
                        } else if sliderValue == 3.0 {
                            return "amidst the clouds, a glimmer of sunshine reminds us that brighter days await"
                        } else if sliderValue == 4.0 {
                            return "your heart's song, though a whisper now, holds the promise of a symphony of happiness"
                        } else if sliderValue == 5.0 {
                            return "like a gentle breeze, may your emotions carry you forward, lifting you higher with each passing moment"
                        } else if sliderValue == 6.0 {
                            return "in the tapestry of feelings, each thread contributes to the masterpiece of your unique and vibrant life"
                        } else if sliderValue == 7.0 {
                            return "even amidst the storm, your spirit shines as a beacon of strength and perseverance"
                        } else if sliderValue == 8.0 {
                            return "the flames of determination burn fiercely within, casting a warm light on your path"
                        } else if sliderValue == 9.0 {
                            return "in the depth of your emotions, you discover the boundless reservoirs of your own inner power"
                        } else if sliderValue == 10.0 {
                            return "you are a constellation of emotions, each one a star contributing to the brilliance of your being; shine on"
                        } else {
                            return "invalid input"
                        }
                    }
                    
                    if(isSubmitClicked == true){
                        ZStack{
                            Rectangle().frame(height: 175).cornerRadius(10)
                            VStack{
                                Text(dateFormatter.string(from: selectedDate)).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))).fontWeight(.bold).font(.system(size:18))
                                Text(".").font(.system(size:4)).fontWeight(.bold)
                                Text("you are feeling " + String(sliderValue) + " out of 10:").foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))).font(.system(size:25)).fontWeight(.bold)
                                Text(".").font(.system(size:10)).fontWeight(.bold)
                                Text(quote).foregroundColor(.white).multilineTextAlignment(.center).font(.system(size:20)).fontWeight(.bold)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct MoodTracker_Previews: PreviewProvider {
    static var previews: some View {
        MoodTracker()
    }
}
