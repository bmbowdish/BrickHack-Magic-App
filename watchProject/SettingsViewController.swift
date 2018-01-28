//
//  SettingsViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var globalPrefs: Preferences!
    
    @IBAction func backgroundSetting(sender: UISwitch){
            sender.isOn = globalPrefs.showBackground
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
