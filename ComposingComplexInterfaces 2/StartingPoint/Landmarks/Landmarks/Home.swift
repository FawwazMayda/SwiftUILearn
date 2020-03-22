//
//  Home.swift
//  Landmarks
//
//  Created by Muhammad Fawwaz Mayda on 22/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories : [String: [Landmark]] {
        Dictionary(
        grouping: landmarkData,
        by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Landmark Home"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
