//
//  ContentView.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

// NOTE: move the button once the horizontal view is ready
struct BigButton: View {
    var body: some View
    {
        Button(action: {
                print("Pressed!")
            }){
                Text("Press me")
                .frame(width: 150, height: 150)
                .foregroundColor(Color.white)
                .background(Color.red)
                .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
            }.buttonStyle(PlainButtonStyle())
    }
}


struct ContentView: View {
    var body: some View {
        BigButton()
//        ScrollView {
//                    HStack {
//                        BigButton()
//                        BigButton()
//                        BigButton()
//                        BigButton()
//                        BigButton()
//                    }
//                    .padding(16)
//                }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
