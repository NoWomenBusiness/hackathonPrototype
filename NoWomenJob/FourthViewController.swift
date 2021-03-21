//
//  FourthViewController.swift
//  NoWomenJob
//
//  Created by Margarita Novokhatskaia on 21.03.2021.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var answer_1: UIButton!
    @IBOutlet weak var answer_2: UIButton!
    @IBOutlet weak var answer_3: UIButton!
    @IBOutlet weak var hero_1: UIImageView!
    @IBOutlet weak var selfScaleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answer_1.layer.opacity = 0
        self.answer_2.layer.opacity = 0
        self.answer_3.layer.opacity = 0
        self.answer_3.titleLabel?.numberOfLines = 2

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        UIView.animate(withDuration: 2, animations: {
            self.answer_1.layer.opacity = 1
            self.answer_2.layer.opacity = 1
            self.answer_3.layer.opacity = 1
        })
        UIView.transition(with: self.hero_1,
                          duration: 1,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.hero_1.image = UIImage(named: "1-proud")
        })
    }
    
    
  
    @IBAction func answer_3(_ sender: UIButton) {
        performSegue(withIdentifier: "to_5", sender: sender)
    }
    
}
