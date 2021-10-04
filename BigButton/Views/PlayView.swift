//
//  PlayView.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import SwiftUI

struct PlayView : View
{
    @State var dataWrapper:ButtonAttribute
    var body: some View {
        // Needs a title of the name and able to modify
        BigButton(buttonAttribute: dataWrapper)
    }
}
