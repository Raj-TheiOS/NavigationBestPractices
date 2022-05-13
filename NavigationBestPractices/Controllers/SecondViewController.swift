//
//  SecondViewController.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didtapBack(_ sender: Any) {
        NavigationHandler.pop()
    }
    
}
