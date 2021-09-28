//
//  ContentView.swift
//  BigButton
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

struct PhoneContentView: View {
    var model = ViewModelPhone()
    @State var reachable = "No"
    
    // TODO: Key should be encrypted.... Maybe
    // TODO: Fix this stupid service in backend
    @State var debugValues:[String:[String]] = [
        "0": ["WhooHoo!", "green", "http://127.0.0.1:5000/homer.mp3"],
        "1": ["HERE IS WES!", "blue", "http://127.0.0.1:5000/announcer.mp3"],
        "2": ["Vader!", "red", "http://127.0.0.1:5000/vader.mp3"],
    ]
    
    var body: some View {
        VStack{
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneContentView()
    }
}
