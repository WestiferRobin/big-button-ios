//
//  ViewModelPhone.swift
//  BigButton
//
//  Created by Wesley Webb on 9/27/21.
//

import Foundation
import SwiftUI
import WatchConnectivity

class ViewModelPhone : NSObject,  WCSessionDelegate{
    var session: WCSession
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        self.session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    
}
