//
//  ViewController.swift
//  Dicee
//
//  Created by Kang Paul on 2018/8/25.
//  Copyright © 2018年 Kang Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0
    
    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    fileprivate func randomizeDice() {
        // Swift 4.2+ randomIndex1 = Int.random(in: 0 ... 5)
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        diceViewImage1.image = UIImage(named: diceArray[randomIndex1])
        diceViewImage2.image = UIImage(named: diceArray[randomIndex2])
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizeDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            randomizeDice()
        }
    }
    
}

