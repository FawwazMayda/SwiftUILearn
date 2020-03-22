//
//  Home.swift
//  Landmarks
//
//  Created by Muhammad Fawwaz Mayda on 22/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationView {
            Text("Landmark Home")
            .navigationBarTitle(Text("Landmark Home"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
