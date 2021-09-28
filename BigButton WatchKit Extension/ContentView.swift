//
//  ContentView.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

// Watch - ContentView
struct ContentView: View {
    
    @ObservedObject var model = ViewModelWatch()
    
    var body: some View {
        if (self.model.buttonAttributes.count == 0)
        {
            Text("Waiting for Buttons!!")
        }
        else
        {
            TabView {
                ForEach(self.model.buttonAttributes, id: \.self) {
                    attribute in BigButton(buttonAttribute:attribute)
                }
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
