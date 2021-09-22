//
//  ContentView.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

struct SoundObject {
    // Add attributes for button attributes
}

// color, name, and sound
class ButtonAttribute {
    let buttonColor:Color
    let name:String
    
    init()
    {
        
    }
    //let sound:SoundObject = SoundObject()
}

struct ContentView: View {
    
    // Need to connect with App side asap
    @State private var buttonList : [ButtonAttribute] = [
        ButtonAttribute(buttonColor: Color.blue, name: "fart"),
        ButtonAttribute(buttonColor: Color.red, name: "OGERS HAVE LAYERS!?!?"),
        ButtonAttribute(buttonColor: Color.green, name: "Star Wars Music")
    ]
    @State private var debugCounter:Int = 1;
    
    var body: some View {
        
    TabView {
        ForEach(buttonList) { attribute in
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
