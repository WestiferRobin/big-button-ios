//
//  ViewModelWatch.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/27/21.
//

import Foundation
import WatchConnectivity
import SwiftUI


class ViewModelWatch : NSObject,  WCSessionDelegate, ObservableObject{
    var session: WCSession
    @Published var buttonAttributes:[ButtonAttribute]
    init(session: WCSession = .default){
        self.session = session
        self.buttonAttributes = []
        super.init()
        self.session.delegate = self
        session.activate()
    }
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
//            self.buttonAttributes.append(ButtonAttribute(title: message["message"] as! String, color: Color.green))
            let value:[String:[String]] = (message as AnyObject) as! [String : [String]]
            value.forEach
            {
                var color:Color = Color.white
                
                // NOTE: I'm using basic colors until I get the phone work started
                switch ($1[1])
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
                
                self.buttonAttributes.append(ButtonAttribute(title: $1[0], color: color, soundUrl: $1[2]))
            }
        }
    }
    
    private func BuildButtonAttribute(title: String, colorFlag: String)
    {
        
    }
    
}
