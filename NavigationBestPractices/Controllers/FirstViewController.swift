//
//  ViewController.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didtapContinue(_ sender: Any) {
        NavigationHandler.pushTo(.secVC)
    }
    
}

