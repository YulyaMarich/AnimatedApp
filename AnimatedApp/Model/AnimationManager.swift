//
//  AnimationManager.swift
//  AnimatedApp
//
//  Created by Julia on 20.01.2022.
//

import Spring

class AnimationManager {
    static let shared = AnimationManager()
    
    private init() {}
    
    let animationsArray: [Spring.AnimationPreset] = [ .Shake, .FadeIn, .Wobble, .FadeInDown, .FadeInLeft, .FadeInRight, .FadeInUp, .Fall, .Morph, .Swing, .SqueezeDown]
    let curvesArray: [Spring.AnimationCurve] = [.Spring, .EaseIn, .EaseInBack, .EaseInCirc, .EaseInExpo, .EaseInCubic, .EaseInOut, .EaseInOutBack, .EaseInOutSine, .EaseOutExpo, .Linear, .EaseOut]
    let durationArray: [CGFloat] = [1, 1.5, 2, 1.25]
}
