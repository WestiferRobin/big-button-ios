//
//  ContentView.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    
    // Need to connect with App side asap
    private var attributeList:[ButtonAttribute] = [
        ButtonAttribute(title:"FART", color:Color.red),
        ButtonAttribute(title:"OGRE!", color:Color.green),
        ButtonAttribute(title:"Darth Vader", color:Color.blue)
    ]
    
    var body: some View {
        TabView {
            ForEach(attributeList, id: \.self) { attribute in
                BigButton(buttonAttribute:attribute)
            }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
