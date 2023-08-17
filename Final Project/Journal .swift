//
//  Journal .swift
//  Final Project
//
//  Created by Brianna Silva on 8/15/23.
//

import SwiftUI
struct Journal: View {
    @State var journalEntry: String = ""
    @State var prompts = ["I am feeling...", "I am thinking about...", "Today, I...", "I want...", "I believe..."]
    @State var aPrompt = ""
    var body: some View {
        NavigationStack {
            ZStack{
                Color(UIColor(red: 0x6f / 255, green: 0xa3 / 255, blue: 0xde / 255, alpha: 1.0)).ignoresSafeArea(.all)
                VStack {
                    NavigationLink(destination: ContentView()) {
                                        Image("home screen icon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200).frame(height: 100)
                    }
                    Text("my journal")
                        .font(.system(size:50)).fontWeight(.bold)
                    Text ("write away...")
                        .font(.system(size:25)).fontWeight(.bold)
                    Button("new prompt") {
                        let randomNum =
                        Int.random(in:0..<prompts.count)
                        aPrompt = prompts[randomNum]
                    }
                    .font(.system(size:25)).fontWeight(.bold)
                    .foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    Text(aPrompt)
                        .font(.system(size:30)).fontWeight(.bold)
                        .font(.title3)
                        .fontWeight(.light)
                        .padding()
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Type here...", text: $journalEntry, axis: .vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .border(Color.gray, width: 1)
                        .lineLimit(10, reservesSpace: true)
                        .textFieldStyle(.roundedBorder)
                        .modifier(View_Modifier(text: $journalEntry))
                }
                .padding()
            }
            }
        }
    }
    struct Journal_Previews: PreviewProvider {
        static var previews: some View {
            Journal()
        }
    }
