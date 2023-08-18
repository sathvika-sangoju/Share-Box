//
//  Motivation.swift
//  Final Project
//
//  Created by Brianna Silva on 8/15/23.
//

import SwiftUI

struct Motivation: View {
    //sad variables
    @State private var isSadClicked = false
    @State var sadQuotes = [" You are stronger than you know ", " This too shall pass ", " Difficult roads often lead to beautiful destinations ", " Stars can't shine without darkness ", " Storms don't last forever; the sun will shine again "]
    @State var sad = ""
    //happy variables
    @State private var isHappyClicked = false
    @State var happyQuotes = [" Keep shining, you're a beacon of happiness ", " Find joy in the little things ", " Today is a good day to be happy ", " Smile! It's contagious! ", " Today is a good day to be happy! "]
    @State var happy = ""
    //love variables
    @State private var isLoveClicked = false
    @State var loveQuotes = [" With love, all things are possible ", " Love: the heart's best expression ", " Where there is love, there is life ", " Love has no boundaries ", " Love blooms in the garden of hearts "]
    @State var love = ""
    //upset variables
    @State private var isUpsetClicked = false
    @State var upsetQuotes = [" Let yourself feel, then let it go ", " Challenges are opportunities in disguise ", " Take a deep breath; better days are ahead ", " You are stronger than the challenges you face ", " Your resilience is your greatest asset "]
    @State var upset = ""
    //tired variables
    @State private var isTiredClicked = false
    @State var tiredQuotes = [" Rest, recharge, and rise again ", " Pause and breathe; you're doing great ", " Restore your sparkle with a good rest ", " Tiredness is a reminder to be kind to yourself ", " Take a moment to unwind and relax "]
    @State var tired = ""
    //angry variables
    @State private var isAngryClicked = false
    @State var angryQuotes = [" Chose understanding over reaction ", " In the heat of the moment, let empathy guide you ", " In the storm of emotions, fin your calm center ", " When emotions run high, wisdom takes a back seat ", " Kindness is the language the heart understands "]
    @State var angry = ""
    //shocked variables
    @State private var isShockedClicked = false
    @State var shockedQuotes = [" Life's shocks remind us that anything is possible ", " A gasp of surprise, an inhale of new beginnings ", " Life's surprises are its most vivid colors ", " In moments of shock, remember: you are never alone ", " When life startles, breathe in the comfort of the present "]
    @State var shock = ""
    //confused variables
    @State private var isConfusedClicked = false
    @State var confusedQuotes = [" Embrace the unknown; it hold the seeds of discovery ", " Lost in thought, seek clarity within ", " Through the fog of confusion, wisdom emerges ", " When the mind wanders, gather your thoughts like stars ", " In the labyrinth of uncertainity, let curiosity be your guide "]
    @State var confused = ""
    //celebrate variables
    @State private var isCelebrateClicked = false
    @State var celebrateQuotes = [" Cherish the moment; you've earned it ", " Celebrate your wins, for they are the stars in your sky ", " Embrace the joy of accomplishment; it's your masterpiece ", " Celebrate with a heart full of pride and a soul full of gratitude ", " Raise your spirits high; your sucess shines brighter "]
    @State var celebrate = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color(UIColor(red: 0x6f / 255, green: 0xa3 / 255, blue: 0xde / 255, alpha: 1.0)).ignoresSafeArea(.all)
                VStack(spacing: 10){
                    NavigationLink(destination: ContentView()) {
                                        Image("home screen icon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200).frame(height: 100)
                    }
                    
                    Text("motivation").font(.system(size:50)).fontWeight(.bold)
                    Text("how are you feeling today?").font(.system(size:27)).fontWeight(.bold)
                    HStack{
                        VStack{
                            Button(action: {
                                isSadClicked.toggle()
                                if isSadClicked {
                                    let randomIndex = Int.random(in: 0..<sadQuotes.count)
                                    sad = sadQuotes[randomIndex]
                                }
                            }) {
                                Image("sad")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }

                        VStack{
                            Button(action: {
                                isHappyClicked.toggle()
                                if isHappyClicked {
                                    let randomIndex = Int.random(in: 0..<happyQuotes.count)
                                    happy = happyQuotes[randomIndex]
                                }
                            }) {
                                Image("happy")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                isLoveClicked.toggle()
                                if isLoveClicked {
                                    let randomIndex = Int.random(in: 0..<loveQuotes.count)
                                    love = loveQuotes[randomIndex]
                                }
                            }) {
                                Image("love")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                    
                    HStack{
                        
                        VStack{
                            Button(action: {
                                isUpsetClicked.toggle()
                                if isUpsetClicked {
                                    let randomIndex = Int.random(in: 0..<upsetQuotes.count)
                                    upset = upsetQuotes[randomIndex]
                                }
                            }) {
                                Image("upset")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                isTiredClicked.toggle()
                                if isTiredClicked {
                                    let randomIndex = Int.random(in: 0..<tiredQuotes.count)
                                    tired = tiredQuotes[randomIndex]
                                }
                            }) {
                                Image("tired")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                isAngryClicked.toggle()
                                if isAngryClicked {
                                    let randomIndex = Int.random(in: 0..<angryQuotes.count)
                                    angry = angryQuotes[randomIndex]
                                }
                            }) {
                                Image("angry")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                    
                    HStack{
                        VStack{
                            Button(action: {
                                isShockedClicked.toggle()
                                if isShockedClicked {
                                    let randomIndex = Int.random(in: 0..<shockedQuotes.count)
                                    shock = shockedQuotes[randomIndex]
                                }
                            }) {
                                Image("shocked")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                isConfusedClicked.toggle()
                                if isConfusedClicked {
                                    let randomIndex = Int.random(in: 0..<confusedQuotes.count)
                                    confused = confusedQuotes[randomIndex]
                                }
                            }) {
                                Image("confused")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        
                        VStack{
                            Button(action: {
                                isCelebrateClicked.toggle()
                                if isCelebrateClicked {
                                    let randomIndex = Int.random(in: 0..<celebrateQuotes.count)
                                    celebrate = celebrateQuotes[randomIndex]
                                }
                            }) {
                                Image("celebrate")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                    
                    Text("quote for you:").font(.system(size:35)).fontWeight(.bold)
                    
                    ZStack{
                        if (isSadClicked == true) {
                            Text(sad)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))      .background(Color.black)
                            
                        }
                        
                        if (isHappyClicked == true) {
                            Text(happy)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isLoveClicked == true) {
                            Text(love)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isUpsetClicked == true) {
                            Text(upset)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isTiredClicked == true) {
                            Text(tired)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isAngryClicked == true) {
                            Text(angry)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isShockedClicked == true) {
                            Text(shock)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isConfusedClicked == true) {
                            Text(confused)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                        
                        if (isCelebrateClicked == true) {
                            Text(celebrate)
                                .font(.system(size:25)).fontWeight(.semibold).multilineTextAlignment(.center).foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0))) .background(Color.black)
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    struct Motivation_Previews: PreviewProvider {
        static var previews: some View {
            Motivation()
        }
    }
}

