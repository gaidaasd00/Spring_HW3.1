//
//  ViewController.swift
//  Spring_HW3.1
//
//  Created by Алексей Гайдуков on 15.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLable: UILabel! {
        didSet {
            animationLable.text = animation.description
        }
    }
    // MARK: - Private properties
        private var animation = Animation.getRandomAnimation()
  
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        animationLable.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        sender.animate()
    }
}
