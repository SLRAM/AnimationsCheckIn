//
//  ViewController.swift
//  AnimationsCheckIn
//
//  Created by Stephanie Ramirez on 1/28/19.
//  Copyright © 2019 Stephanie Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cat: UIImageView!
    @IBOutlet weak var transitionButton: UIButton!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear, animations: {
            self.duck.transform = CGAffineTransform(translationX: -1000, y: 0)
            self.duck.frame = CGRect(x: self.duck.frame.origin.x,
                                     y: self.duck.frame.origin.y,
                                     width: 1000,
                                     height: 1000)
        })
        
        
        
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    @IBAction func catDogTransition(_ sender: UIButton) {
        if cat.image == UIImage(named: "cat") {
            UIView.transition(with: cat, duration: 1.0, options: [.curveEaseInOut, .transitionFlipFromRight], animations: {
                self.cat.image = UIImage(named: "dog")
                self.label.text = "Dog"
            })
        } else {
            UIView.transition(with: cat, duration: 1.0, options: [.curveEaseInOut, .transitionFlipFromRight], animations: {
                self.cat.image = UIImage(named: "cat")
                self.label.text = "Cat"
            })
        }
        
        // code if using a button instead of image view
//        if cat.imageView?.image == UIImage(named: "cat") {
//            UIView.transition(with: cat, duration: 1.0, options: [.curveEaseInOut, .transitionFlipFromRight], animations: {
//                self.cat.setImage(UIImage(named: "dog"), for: .normal)
//            })
//
//        } else {
//            UIView.transition(with: cat, duration: 1.0, options: [.curveEaseInOut, .transitionFlipFromRight], animations: {
//                self.cat.setImage(UIImage(named: "cat"), for: .normal)
//            })
//        }
    }
    
}

