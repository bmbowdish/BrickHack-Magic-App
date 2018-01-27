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
    @IBOutlet var diceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonClicked() {

        theLabel.text = "You rolled a \(getRandom(lowerBound: 1, upperBound: 6))!"
        
        theLabel.textColor = UIColor.green
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

