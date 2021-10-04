//
//  HomeView.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import SwiftUI

struct HomeView : View
{
    var model = ViewModelPhone()
    var audioPlayer:PhoneSoundManager = PhoneSoundManager()
    
    @State var bigButtons = debugButtons
    
    var body: some View {
        NavigationView {
            List {
                ForEach (bigButtons, id: \.id)
                {
                    button in NavigationItem(buttonAttribute: button)
                }.onDelete { $0.forEach { bigButtons.remove(at: $0) } }
            }
            .navigationTitle("Big Buttons")
            .listStyle(PlainListStyle())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: OptionsView()) {
                        Image(systemName: "gearshape.fill")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RecordView()) {
                        Image(systemName: "cross.fill")
                    }
                }
            }
        }.accentColor(Color.black)
    }
}
