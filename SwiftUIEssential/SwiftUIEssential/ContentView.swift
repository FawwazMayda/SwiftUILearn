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
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Hello, World!")
                    .font(.title).foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }.padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
