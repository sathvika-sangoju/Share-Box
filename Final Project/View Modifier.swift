//
//  View Modifier.swift
//  Final Project
//
//  Created by Sathvika Sangoju on 8/17/23.
//

import SwiftUI
struct View_Modifier: ViewModifier {
  @Binding var text:String
  func body(content: Content) -> some View {
    VStack {
      content
      Button("submit & reset"){
      action: do {self.text = ""}
      }
      .font(.system(size:25)).fontWeight(.bold)
      .foregroundColor(Color(UIColor(red: 236 / 255, green: 213 / 255, blue: 207 / 255, alpha: 1.0)))
      .buttonStyle(.borderedProminent)
      .tint(.black)
    }
  }
}
