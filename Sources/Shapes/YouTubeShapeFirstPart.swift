//
//  YouTubeShapeFirstPart.swift
//  
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI

struct YouTubeShapeFirstPart {
    var progress: Double
}

extension YouTubeShapeFirstPart: Shape {
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }

    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .init(x: rect.minX, y: rect.minY))
            path.addLine(to: .init(x: rect.maxX - (rect.height / 8) * (1 - progress), y: rect.minY + (rect.height / 4) * progress))
            path.addLine(to: .init(x: rect.maxX - (rect.height / 8) * (1 - progress), y: rect.maxY - (rect.height / 4) * progress))
            path.addLine(to: .init(x: rect.minX, y: rect.maxY))
            path.closeSubpath()
        }
    }
}
