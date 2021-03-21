//
//  ThirdViewController.swift
//  NoWomenJob
//
//  Created by Margarita Novokhatskaia on 20.03.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var answer: UIButton!
    @IBOutlet weak var hero_2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answer.layer.opacity = 0
        self.answer.titleLabel?.numberOfLines = 2
       
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
    }

}
