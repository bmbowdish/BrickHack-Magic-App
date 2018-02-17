//
//  SettingsViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var backgroundView: UIImageView!
    @IBOutlet var setLifetoatl: UIButton!
    @IBOutlet weak var lifetotal: UITextField!
    
    // preferences of the user (model)
    var globalPrefs: Preferences!
    
    // Turns the background on or off
    @IBAction func backgroundSetting(sender: UISwitch){
        globalPrefs.showBackground = sender.isOn
        refresh() // refreshes page
    }
    
    
    @IBAction func buttonPress(){
        // get current values or set values to default
        guard let lifetotalText = lifetotal.text,
            let newLifetotal = Int(lifetotalText)
        else {
            lifetotal.text = String(globalPrefs.defaultLifetotal)
            return
        }
        // set new preference
        globalPrefs.defaultLifetotal = newLifetotal
        // closes number pad
        lifetotal.resignFirstResponder()
    }
    
    // function for refreshing page
    func refresh(){
        self .viewDidLoad()
        self .viewWillAppear(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // set keyboard time to numberPad
        lifetotal.keyboardType = UIKeyboardType.numberPad
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView?.isHidden = !globalPrefs.showBackground // background on/off
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
