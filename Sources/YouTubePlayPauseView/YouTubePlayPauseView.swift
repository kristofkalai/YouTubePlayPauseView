//
//  YouTubePlayPauseView.swift
//
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI

public struct YouTubePlayPauseView {
    @Binding private var playing: Bool
    @State private var progress: Double
    private let continuousUpdate: Bool
    private let color: Color

    public init(playing: Binding<Bool>, continuousUpdate: Bool = false, color: Color = .white) {
        self._playing = playing
        self.continuousUpdate = continuousUpdate
        self.color = color
        self.progress = playing.wrappedValue ? .zero : 1
    }
}

extension YouTubePlayPauseView: View {
    public var body: some View {
        GeometryReader { geometryProxy in
            HStack(spacing: .zero) {
                YouTubeShapeFirstPart(progress: progress)
                    .fill(color)
                    .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.height)
                YouTubeShapeSecondPart(progress: progress)
                    .fill(color)
                    .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.height)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.33)) {
                progress = progress == .zero ? 1 : .zero
            }
        }
        .animationObserver(for: progress) {
            guard continuousUpdate else { return }
            playing = $0 < 0.5
        } onComplete: {
            guard !continuousUpdate else { return }
            playing = progress.isZero
        }
    }
}
