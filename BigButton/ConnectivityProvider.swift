//
//  ConnectivityProvider.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/22/21.
//

import Foundation
import WatchConnectivity

class ConnectivityProvider: NSObject, WCSessionDelegate {
    
    private let session: WCSession
    
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
    }
    
    func send(message: [String:Any]) -> Void {
        session.sendMessage(message, replyHandler: nil) { (error) in
            print(error.localizedDescription)
        }
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        // code
    }
//    
//    func sessionDidBecomeInactive(_ session: WCSession) {
//        // code
//    }
//    
//    func sessionDidDeactivate(_ session: WCSession) {
//        // code
//    }
}
