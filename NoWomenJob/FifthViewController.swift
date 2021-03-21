//
//  FifthViewController.swift
//  NoWomenJob
//
//  Created by Margarita Novokhatskaia on 21.03.2021.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var answer: UIButton!
    @IBOutlet weak var hero_2: UIImageView!
    @IBOutlet weak var selfScale: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answer.layer.opacity = 0
        self.answer.titleLabel?.numberOfLines = 2
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        animateScaleAppearing()
        UIView.animate(withDuration: 2, animations: {
            self.answer.layer.opacity = 1
        })
        UIView.transition(with: self.hero_2,
                          duration: 1,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.hero_2.image = UIImage(named: "2-curious")
        })
    }
    
    func animateScaleAppearing() {
        let animation = CASpringAnimation(keyPath: "opacity")
        animation.fromValue = 0
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 3
        animation.duration = 1
        
        self.selfScale.layer.add(animation, forKey: nil)
    }

}
