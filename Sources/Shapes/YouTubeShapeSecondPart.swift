//
//  YouTubeShapeSecondPart.swift
//  
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI

struct YouTubeShapeSecondPart {
    var progress: Double
}

extension YouTubeShapeSecondPart: Shape {
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }

    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .init(x: rect.minX + (rect.height / 8) * (1 - progress), y: rect.minY + (rect.height / 4) * progress))
            path.addLine(to: .init(x: rect.maxX, y: rect.minY + (rect.height / 2) * progress))
            path.addLine(to: .init(x: rect.maxX, y: rect.maxY - (rect.height / 2) * progress))
            path.addLine(to: .init(x: rect.minX + (rect.height / 8) * (1 - progress), y: rect.maxY - (rect.height / 4) * progress))
            path.closeSubpath()
        }
    }
}
