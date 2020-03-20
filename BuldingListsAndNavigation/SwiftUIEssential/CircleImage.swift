//
//  CircleImage.swift
//  SwiftUIEssential
//
//  Created by Muhammad Fawwaz Mayda on 20/03/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
    .overlay(Circle().stroke(Color.gray,lineWidth: 4.0))
            .shadow(radius: 10.0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
