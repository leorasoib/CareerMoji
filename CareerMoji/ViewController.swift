//
//  ViewController.swift
//  CareerMoji
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Leora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
        
     @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Hello there!", message: "You got this", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

}

