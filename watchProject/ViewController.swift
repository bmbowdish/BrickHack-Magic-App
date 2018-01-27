//
//  ViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/22/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var theLabel: UILabel!
    
    
    /// Get a random number between two bounds. 
    func getRandom(lowerBound: UInt32, upperBound: UInt32) -> Int{
        let uniformInt: UInt32 = (upperBound - lowerBound) + 1
        return Int(arc4random_uniform(uniformInt) + lowerBound);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAClicked(){
        let goodbye: String = "Goodbye world."
        let hello: String = "Hello world."
        if (theLabel.text == goodbye){
            theLabel.text = hello
            theLabel.textColor = UIColor.blue
        }
        else {
            theLabel.text = goodbye
            theLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func buttonBClicked() {

        theLabel.text = "\(getRandom(lowerBound: 1, upperBound: 10))"
        
//        theLabel.text = "\(getRandom(lowerBound: 0, upperBound: 10))"
        
        theLabel.textColor = UIColor.green
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

