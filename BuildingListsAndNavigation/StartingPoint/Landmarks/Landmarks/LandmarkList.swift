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
        List(landmarkData, id: \.id) {
            lm in LandmarkRow(landmark: lm)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
