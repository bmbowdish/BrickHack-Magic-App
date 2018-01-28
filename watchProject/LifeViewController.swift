//
//  LifeViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class LifeViewController: UIViewController {

    @IBOutlet var topLabel: UILabel!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    @IBOutlet var fourLabel: UILabel!
    
    var globalPrefs: Preferences!
    
    var allLabels: [UILabel] {
        return [oneLabel, twoLabel, threeLabel, fourLabel]
    }
    
    func setupLife(){
        for label in allLabels {
            label.text = "\(globalPrefs.defaultLifetotal)"
        }
    }
    
    @IBAction func uptickLife(sender: UIButton){
        let lifeLabel = allLabels[sender.tag]
        guard let text = lifeLabel.text,
              let intValue = Int(text) else {
            return
        }
        lifeLabel.text = "\(intValue + 1)"
    }
    
    @IBAction func decreaseLife(sender: UIButton){
        let lifeLabel = allLabels[sender.tag]
        guard let text = lifeLabel.text, let intValue = Int(text) else {
            return
        }
        lifeLabel.text = "\(intValue - 1)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupLife()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
