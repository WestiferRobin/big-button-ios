//
//  Red.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/22/21.
//

import SwiftUI

struct BigButton : View
{
    @State public var buttonAttribute:ButtonAttribute
    // colorFlag:attribute.buttonColor, message: attribute.name
    
    var body: some View
    {
        Button(action: {
                print("Pressed!")
            }){
                Text(self.buttonAttribute.name)
                .frame(width: 150, height: 150)
                .foregroundColor(Color.white)
                .background(self.buttonAttribute.buttonColor)
                .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
            }.buttonStyle(PlainButtonStyle())
    }
}
