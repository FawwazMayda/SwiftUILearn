//
//  Badge.swift
//  Landmarks
//
//  Created by Muhammad Fawwaz Mayda on 21/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        GeometryReader { geometry in
            Path {
                path in
                var width : CGFloat = min(geometry.size.height,geometry.size.width)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(to:
                    CGPoint(x: xOffset + 0.95*width,
                            y: height * (HexagonParameters.adjustment + 0.20)))
                
                HexagonParameters.points.forEach {
                    path.addLine(
                        to: .init(
                            x: xOffset + width * $0.useWidth.0 * $0.xFactors.0,
                            y: height * $0.useHeight.0 * $0.yFactors.0
                        )
                    )
                    
                    path.addQuadCurve(
                        to: .init(
                            x: xOffset + width * $0.useWidth.1 * $0.xFactors.1,
                            y: height * $0.useHeight.1 * $0.yFactors.1)
                        , control: .init(
                            x: xOffset + width * $0.useWidth.2 * $0.xFactors.2,
                            y: height * $0.useHeight.2 * $0.yFactors.2))
                }
                
            }
            .fill(Color.black)
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
