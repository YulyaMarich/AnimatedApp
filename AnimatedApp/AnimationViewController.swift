//
//  AnimationViewController.swift
//  AnimatedApp
//
//  Created by Julia on 19.01.2022.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var changeAnimationButton: UIButton!
    @IBOutlet var animationLabel: UILabel!
    
    var animation = Animation.createRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = "Information about animation"
        changeAnimationButton.titleLabel?.text = "Will appear \(animation.animation.rawValue)"
    }
    
    @IBAction func pressChangeAnimationButton() {
        animatedView.animation = animation.animation.rawValue
        animatedView.curve = animation.curve.rawValue
        animatedView.duration = animation.duration
        animatedView.animate()
        
        animationLabel.text = "Animation: \(animation.animation.rawValue), \nCurve: \(animation.curve.rawValue), \nDuration: \(animation.duration)"
        
        animation = Animation.createRandomAnimation()
        changeAnimationButton.setTitle("Wll appear \(animation.animation.rawValue)", for: .normal)
    }
}


