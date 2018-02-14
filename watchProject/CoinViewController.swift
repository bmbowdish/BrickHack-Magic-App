//
//  CoinViewController.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

class CoinViewController: UIViewController {
    @IBOutlet var button: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var backgroundView: UIImageView!
    
    var globalPrefs: Preferences!
    
    let colors = [UIColor.black]
    var pointer: Int = 0;

    // when the button is clicked
    @IBAction func buttonClicked(){
        
        let coin = getRandomBool()
        if (coin == true){
            imageView.image = #imageLiteral(resourceName: "Tails")
        }
        else {
            imageView.image = #imageLiteral(resourceName: "Heads")
        }
        
        button.setTitleColor(colors[pointer], for: UIControlState.normal)
        pointer = pointer + 1
        if pointer > colors.count - 1 {
            pointer = 0
        }
        
        imageView.isHidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundView.isHidden = !globalPrefs.showBackground
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
