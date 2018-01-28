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
    @IBOutlet var twoDiceSix: UIButton!
    @IBOutlet var backgroundView: UIImageView!
    
    var globalPrefs: Preferences!
    
    
    @IBAction func diceSixClicked() {
        theLabel.text = "You rolled a D6 which landed on \(getRandom(lowerBound: 1, upperBound: 6))!"
    }
    
    @IBAction func diceTwentyClicked(){
        theLabel.text = "You rolled a D20 which landed on \(getRandom(lowerBound: 1, upperBound: 20))!"
    }
    
    @IBAction func twoDiceSixClicked(){
        theLabel.text = "You rolled two D6: \(getRandom(lowerBound: 1, upperBound: 6)) and \(getRandom(lowerBound: 1, upperBound: 6))!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView.isHidden = !globalPrefs.showBackground
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

