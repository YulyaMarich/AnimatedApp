//
//  Animation.swift
//  AnimatedApp
//
//  Created by Julia on 20.01.2022.
//

import Spring

struct Animation {
    var animation: Spring.AnimationPreset
    var curve: Spring.AnimationCurve
    var duration: CGFloat
}

extension Animation {
    static func createRandomAnimation() -> Animation {
        let animationManager = AnimationManager.shared
        let randomAnimation = Animation(animation: animationManager.animationsArray.randomElement() ?? .Fall,
                                        curve: animationManager.curvesArray.randomElement() ?? .Linear,
                                        duration: animationManager.durationArray.randomElement() ?? 1)
        return randomAnimation
    }
}
