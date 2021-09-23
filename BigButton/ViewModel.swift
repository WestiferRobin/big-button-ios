//
//  ViewModel.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/23/21.
//

import SwiftUI

final class ViewModel: ObservableObject {
    
    private(set) var connectivityProvider: ConnectivityProvider
    var textFieldValue: String = ""
    
    init(connectivityProvider: ConnectivityProvider) {
        self.connectivityProvider = connectivityProvider
    }
    
    func sendMessage() -> Void {
        let txt = textFieldValue
        let message = ["message":txt]
        connectivityProvider.send(message: message)
    }
}
