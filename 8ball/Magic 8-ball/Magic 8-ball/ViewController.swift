//
//  ViewController.swift
//  Magic 8-ball
//
//  Created by Chris Kelley on 5/15/18.
//  Copyright © 2018 Chris Kelley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var magicBallView: UIImageView!
    
    let randomBallAnswer = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        newBallNumber()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
            newBallNumber()
    }
    
    func newBallNumber () {
        randomBallNumber = Int (arc4random_uniform(5))
        magicBallView.image = UIImage(named: randomBallAnswer[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallNumber()
    }
}

