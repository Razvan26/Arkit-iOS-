//
//  MainViewController.swift
//  ArgumentApp
//
//  Created by Boanca Razvan on 13/04/2018.
//  Copyright © 2018 Arkit simple app. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func earthBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goEarth", sender: self)
        print("Earth loading...")
    }
    @IBAction func marsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goMars", sender: self)
        print("Mars loading...")
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
