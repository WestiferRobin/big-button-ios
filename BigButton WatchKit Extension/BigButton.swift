//
//  Red.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/22/21.
//

import SwiftUI

struct ButtonAttribute : Hashable
{
    public var title:String
    public var color:Color
    public var soundUrl:String
}

struct BigButton : View
{
    @State var buttonAttribute:ButtonAttribute
    @StateObject private var soundManager = WatchSoundManager()
    
    var body: some View
    {
        Button(action: {
                print("Pressed \(buttonAttribute)!")
                self.playSound()
            }){
                Text(self.buttonAttribute.title)
                .frame(width: 150, height: 150)
                .foregroundColor(Color.white)
                .background(self.buttonAttribute.color)
                .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
            }.buttonStyle(PlainButtonStyle())
    }
    
    func playSound()
    {
        soundManager.playSound(sound: self.buttonAttribute.soundUrl)
        soundManager.audioPlayer?.play()
    }
}
