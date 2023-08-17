//
//  Activities .swift
//  Final Project
//
//  Created by Brianna Silva on 8/15/23.
//

import SwiftUI
struct Activities_: View {
  //outside vars
  @State var outsideActivities = ["go on a walk", "play a sport", "ride your bike", "go on a long drive", "eat at your favorite restaurant"]
  @State var outsides = " "
  @State var isOutsideClicked = false
  @State var randomNum = 0
  //inside vars
  @State var insideActivities = ["paint nature", "bake your favorite treat", "redecorate your room", "watch your favorite show", "cook a meal"]
  @State var insides = " "
  @State var isInsideClicked = false
  @State var randomNum1 = 0
  //family vars
  @State var groupActivities = ["play board games", "plan a trip", "go out to eat", "sing karaoke", "make art and crafts"]
  @State var groups = " "
  @State var isGroupClicked = false
  @State var randomNum2 = 0
  var body: some View {
    ZStack {
        Color(UIColor(red: 0x6f / 255, green: 0xa3 / 255, blue: 0xde / 255, alpha: 1.0)).ignoresSafeArea(.all)
        VStack{
            NavigationLink(destination: ContentView()) {
                Image("home screen icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200).frame(height: 100)
            }
            Text("activities to do").font(.system(size:50)).fontWeight(.bold)
            Text ("refresh your mind")
                .font(.system(size:25)).fontWeight(.bold)
            Button("outside activities:"){
                let randomNum = Int.random(in:0..<outsideActivities.count)
                outsides = outsideActivities [randomNum]
            }
            .font(.system(size:25)).fontWeight(.bold).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
            .buttonStyle(.borderedProminent)
            .tint(.black)
            Text(outsides)
                .font(.system(size:25)).fontWeight(.bold)
                .multilineTextAlignment(.trailing)
            Button("inside activities:"){
                let randomNum1 = Int.random(in:0..<insideActivities.count)
                insides = insideActivities[randomNum1]
            }
            .font(.system(size:25)).fontWeight(.bold).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
            .buttonStyle(.borderedProminent)
            .tint(.black)
            Text(insides)
                .font(.system(size:25)).fontWeight(.bold)
                .multilineTextAlignment(.trailing)
            Button("group activities:"){
                let randomNum2 = Int.random(in:0..<groupActivities.count)
                groups = groupActivities[randomNum2]
            }
            .font(.system(size:25)).fontWeight(.bold).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
            .buttonStyle(.borderedProminent)
            .tint(.black)
            Text(groups)
                .font(.system(size:25)).fontWeight(.bold)
                .multilineTextAlignment(.trailing)
        }
      }
    }
}
    struct Activities__Previews: PreviewProvider {
      static var previews: some View {
        Activities_()
      }
    }
