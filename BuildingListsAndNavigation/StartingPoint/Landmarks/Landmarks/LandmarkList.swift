//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muhammad Fawwaz Mayda on 20/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            
            .navigationBarTitle(Text("Landmark Menus"))
        }
    }
}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
