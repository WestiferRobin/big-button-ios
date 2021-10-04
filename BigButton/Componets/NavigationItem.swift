//
//  NavigationItem.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import SwiftUI

struct NavigationItem : View
{
    @State var buttonAttribute:ButtonAttribute
    
    var body : some View {
        NavigationLink(destination: PlayView(dataWrapper: buttonAttribute)) {
            Image(systemName: "fill")
                    .foregroundColor(.white)
                    .padding()
                    .background(buttonAttribute.color)
                    .clipShape(Circle())
            Text(buttonAttribute.title)
        }
    }
}
