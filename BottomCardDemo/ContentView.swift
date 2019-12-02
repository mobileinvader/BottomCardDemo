//
//  ContentView.swift
//  BottomCardDemo
//
//  Created by Kristijan Kralj on 28/11/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let screenHeight = UIScreen.main.bounds.height
  
  @State var showBottomCard = false
  
  var body: some View {
    BottomCard(showBottomCard: $showBottomCard)
      .offset(y: screenHeight - ( showBottomCard ? (screenHeight - 100) : 200))
      .animation(.easeInOut(duration: 0.3))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
