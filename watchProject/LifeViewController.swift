//
//  LifeViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class LifeViewController: UIViewController {

    @IBOutlet var resetLife: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    @IBOutlet var fourLabel: UILabel!
    @IBOutlet var backgroundView: UIImageView!
    
    // preferences of the user (model)
    var globalPrefs: Preferences!
   
    var currentDefaultLifetotal: Int = 20
    var allLabels: [UILabel] {
        return [oneLabel, twoLabel, threeLabel, fourLabel]
    }
    
    // sets the life in all labels equal to the default
    func setupLife(){
        currentDefaultLifetotal = globalPrefs.defaultLifetotal
        for label in allLabels {
            label.text = "\(currentDefaultLifetotal)"
            label.textColor = UIColor.black
        }
        
    }
    
    // resets the life in all labels
    @IBAction func reset(){
        setupLife()
    }
    
    // Uses tag to differentiate between labels, then increases int value by one
    @IBAction func uptickLife(sender: UIButton){
        let lifeLabel = allLabels[sender.tag]
        guard let text = lifeLabel.text,
              var intValue = Int(text) else {
            return
        }
        intValue = intValue + 1
        lifeLabel.text = "\(intValue)"
        
        if (intValue >= 0){
            lifeLabel.textColor = UIColor.black
        }
    }
    
    // Uses tag to differentiate between labels, then decreases int value by one
    @IBAction func decreaseLife(sender: UIButton){
        let lifeLabel = allLabels[sender.tag]
        guard let text = lifeLabel.text, var intValue = Int(text) else {
            return
        }
        intValue = intValue - 1
        lifeLabel.text = "\(intValue)"
        if intValue < 0 {
            lifeLabel.textColor = UIColor.red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLife()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView.isHidden = !globalPrefs.showBackground // background on/off
        
        // only resets lifetotal if the input is different than the current one
        if (globalPrefs.defaultLifetotal == currentDefaultLifetotal) {}
            else { setupLife() }
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
