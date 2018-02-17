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
    
    // preferences of the user (model)
    var globalPrefs: Preferences!
    
    
    // rolls a D6 and displays roll
    @IBAction func diceSixClicked() {
        theLabel.text = "You rolled a D6 which landed on \(getRandom(lowerBound: 1, upperBound: 6))!"
    }
    
    // rolls a D6 and displays roll
    @IBAction func diceTwentyClicked(){
        theLabel.text = "You rolled a D20 which landed on \(getRandom(lowerBound: 1, upperBound: 20))!"
    }
    
    // rolls two D6 and displays rolls
    @IBAction func twoDiceSixClicked(){
        theLabel.text = "You rolled two D6: \(getRandom(lowerBound: 1, upperBound: 6)) and \(getRandom(lowerBound: 1, upperBound: 6))!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView.isHidden = !globalPrefs.showBackground // if the background should be hidden, make it hidden
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

