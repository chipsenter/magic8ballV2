//
//  ViewController.swift
//  Magic 8 Ball 2
//
//  Created by Johan Lindstrom on 11/25/17.
//  Copyright © 2017 Johan Lindstrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6", "ball7", "ball8", "ball9", "ball10", "ball11", "ball12", "ball13"]
    
    var randomBallNumber : Int = 0
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
      newBallImage()
        
        
    }
    
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(13))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
    }
    
}

