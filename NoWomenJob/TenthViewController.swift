//
//  TenthViewController.swift
//  NoWomenJob
//
//  Created by Margarita Novokhatskaia on 21.03.2021.
//

import UIKit

class TenthViewController: UIViewController {

    @IBOutlet weak var hero_2: UIImageView!
    @IBOutlet weak var answer: UIButton!
    @IBOutlet weak var chat: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answer.layer.opacity = 0
        self.answer.titleLabel?.numberOfLines = 4
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        UIView.animate(withDuration: 2, animations: {
            self.answer.layer.opacity = 1
        })
        UIView.transition(with: self.hero_2,
                          duration: 1,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.hero_2.image = UIImage(named: "2-scoff")
        })

        animateChat()
    }

    func animateChat() {
        let animation = CABasicAnimation(keyPath: #keyPath(CALayer.opacity))
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 5
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        animation.fillMode = CAMediaTimingFillMode.backwards

        chat.layer.add(animation, forKey: nil)
    }

}
