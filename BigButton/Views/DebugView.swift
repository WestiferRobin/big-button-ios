//
//  DebugView.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import SwiftUI

// TODO: This should be configured from backend
// TODO: Check if sending this to the watch or just have rest take over
var debugValues:[String:[String]] = [
    "0": ["YODEL!", "green", "https://s3-us-west-2.amazonaws.com/s.cdpn.io/123941/Yodel_Sound_Effect.mp3"],
    "1": ["HERE IS WESLEY!", "blue", "http://localhost:8000/announcer.mp3"],
    "2": ["Vader!", "red", "http://localhost:8000/vader.mp3"],
    "3": ["WHOO HOO!", "yellow", "http://localhost:8000/homer.mp3"]
]

var debugButtons:[ButtonAttribute] = GenerateWrapper()

func GenerateWrapper() -> [ButtonAttribute]
{
    var ans:[ButtonAttribute] = []
    
    for (_ , value) in debugValues
    {
        let title = value[0]
        let urlSource = value[2]
        
        var color:Color
        switch (value[1])
        {
            case "red":
                color = Color.red
                break
            case "green":
                color = Color.green
                break
            case "blue":
                color = Color.blue
                break
            case "yellow":
                color = Color.yellow
                break
            default:
                color = Color.white
                break
        }
        
        
        let wrapperObj = ButtonAttribute(title: title, color: color, soundUrl: urlSource)
        ans.append(wrapperObj)
    }
    
    return ans
}

struct DebugView: View {
    var model = ViewModelPhone()
    var audioPlayer:PhoneSoundManager = PhoneSoundManager()
    @State var reachable = "No"
    
    var body: some View {
        VStack{
            Text("DebugView")
            Text("Reachable \(reachable)")
            
            Button("testButton", action: {
                if self.model.session.isReachable{
                    self.reachable = "Yes"
                }
                else{
                    self.reachable = "No"
                }
               
            })
            
            // THIS IS DEBUG CODE
            Button(action: {
                self.model.session.sendMessage(debugValues, replyHandler: nil) {
                    (error) in print(error.localizedDescription)
                }
            }) {
            Text("Send Message")
            }
            
            Button("Test Sound", action: {
                let name = debugValues["1"]![2]
                self.audioPlayer.playSound(sound: name)
            })
        }
    }
}
