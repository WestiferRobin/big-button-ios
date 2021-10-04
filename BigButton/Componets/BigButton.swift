//
//  BigButton.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import SwiftUI

struct ButtonAttribute : Identifiable
{
    let id = UUID()
    public var title:String
    public var color:Color
    public var soundUrl:String
}

struct BigButton : View
{
    @State var buttonAttribute:ButtonAttribute
    @StateObject private var soundManager = PhoneSoundManager()
    
    var body: some View
    {
        Button(action: {
                print("Pressed \(buttonAttribute)!")
                self.playSound()
            }){
                Text(self.buttonAttribute.title)
                .frame(width: 400, height: 400)
                .font(.largeTitle)
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

