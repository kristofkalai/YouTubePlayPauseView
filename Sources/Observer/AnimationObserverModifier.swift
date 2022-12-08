//
//  AnimationObserverModifier.swift
//  
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI

struct AnimationObserverModifier<Value: VectorArithmetic> {
    private let observedValue: Value
    private let onChange: ((Value) -> Void)?
    private let onComplete: (() -> Void)?

    var animatableData: Value {
        didSet {
            notifyProgress()
        }
    }

    init(for observedValue: Value, onChange: ((Value) -> Void)?, onComplete: (() -> Void)?) {
        self.observedValue = observedValue
        self.onChange = onChange
        self.onComplete = onComplete
        animatableData = observedValue
    }
}

extension AnimationObserverModifier: AnimatableModifier {
    func body(content: Content) -> some View {
        content
    }
}

extension AnimationObserverModifier {
    private func notifyProgress() {
        DispatchQueue.main.async {
            onChange?(animatableData)
            if animatableData == observedValue {
                onComplete?()
            }
        }
    }
}
