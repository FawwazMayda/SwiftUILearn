//
//  ContentView.swift
//  SwiftUIEssential
//
//  Created by Muhammad Fawwaz Mayda on 20/03/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title).foregroundColor(.green)
            Text("Joshua Tree National Park")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
