//
//  SecondViewController.swift
//  NoWomenJob
//
//  Created by Margarita Novokhatskaia on 20.03.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var answer: UIButton!
    @IBOutlet weak var hero_1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answer.layer.opacity = 0
        
    }
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        UIView.animate(withDuration: 2, animations: {
            self.answer.layer.opacity = 1
        })
        UIView.transition(with: self.hero_1,
                          duration: 1,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.hero_1.image = UIImage(named: "1-smile")
        })
    }

}
