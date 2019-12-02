//
//  BottomCard.swift
//  BottomCardDemo
//
//  Created by Kristijan Kralj on 28/11/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import SwiftUI

struct BottomCard : View {
  
  @Binding var showBottomCard: Bool
  
  var body: some View {
    VStack {
      Button(action: {
        self.showBottomCard.toggle()
      }) {
        Spacer()
        Rectangle()
          .foregroundColor(Color.gray)
          .frame(width: 60, height: 6)
          .cornerRadius(3.0)
          .opacity(0.1)
          .padding(.top, 16)
        Spacer()
      }
      
      VStack {
        Text("This is the text content on the bottom card.")
          .lineLimit(100)
          .padding(20)
          .frame(minWidth: 0, maxWidth: .infinity)
        Spacer()
      }
    }
    .overlay(
      RoundedRectangle(cornerRadius: 30)
        .stroke(Color.black, lineWidth: 1)
    )
  }
}

struct BottomCard_Previews: PreviewProvider {
  static var previews: some View {
    BottomCard(showBottomCard: Binding<Bool>.constant(false))
  }
}
