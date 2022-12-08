//
//  View+Extensions.swift
//  
//
//  Created by Kristof Kalai on 2022. 12. 08..
//

import SwiftUI

extension View {
    func animationObserver<Value: VectorArithmetic>(for value: Value,
                                                    onChange: ((Value) -> Void)? = nil,
                                                    onComplete: (() -> Void)? = nil) -> some View {
        modifier(AnimationObserverModifier(for: value, onChange: onChange, onComplete: onComplete))
    }
}
