//
//  InterfaceController.swift
//  watchProject WatchKit Extension
//
//  Created by Braden Bowdish on 1/22/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    /// Get a random number between two bounds.
    func getRandom(lowerBound: UInt32, upperBound: UInt32) -> Int{
        let uniformInt: UInt32 = (upperBound - lowerBound) + 1
        return Int(arc4random_uniform(uniformInt) + lowerBound);
    }
    
    // Get a random bool (true or false)
    func getRandomBool() -> Bool {
        return arc4random_uniform(2) == 1
    }


    @IBOutlet var label: WKInterfaceLabel!
    @IBOutlet var diceSix: WKInterfaceButton!
    @IBOutlet var diceTwenty: WKInterfaceButton!
    @IBOutlet var coin: WKInterfaceButton!
    
    // rolls a D6 and displays roll
    @IBAction func diceSixButton(){
        label.setText("\(getRandom(lowerBound: 1, upperBound: 6))")
    }
    
    // rolls a D6 and displays roll
    @IBAction func diceTwentyButton(){
        label.setText("\(getRandom(lowerBound: 1, upperBound: 20))")
    }
    
    // flips a coin and displays side
    @IBAction func coinButton(){
        switch getRandomBool() {
        case true:
            label.setText("Heads!")
        case false:
            label.setText("Tails!")
        }
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
