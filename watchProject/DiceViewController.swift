//
//  ViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/22/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    
    @IBOutlet var theLabel: UILabel!
    @IBOutlet var diceSix: UIButton!
    @IBOutlet var diceTwenty: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func diceSixClicked() {
        theLabel.text = "You rolled a D6 which landed on \(getRandom(lowerBound: 1, upperBound: 6))!"
        theLabel.textColor = UIColor.black
    }
    
    @IBAction func diceTwentyClicked(){
        theLabel.text = "You rolled a D20 which landed on \(getRandom(lowerBound: 1, upperBound: 20))!"
        theLabel.textColor = UIColor.black
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

