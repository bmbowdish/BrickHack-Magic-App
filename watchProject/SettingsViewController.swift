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
    
    var globalPrefs: Preferences!
    
    @IBAction func backgroundSetting(sender: UISwitch){
        globalPrefs.showBackground = sender.isOn
    }
    
    @IBAction func buttonPress(){
        // globalPrefs.defaultLifetotal = Int(lifetotal.text!)!
        
        guard let lifetotalText = lifetotal.text,
            let newLifetotal = Int(lifetotalText)
        else {
            lifetotal.text = String(globalPrefs.defaultLifetotal)
            return
        }
        globalPrefs.defaultLifetotal = newLifetotal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView?.isHidden = !globalPrefs.showBackground
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
