//
//  ViewController.swift
//  BullseyeAppUIKit
//
//  Created by PMStudent on 11/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showaAlert() {
        let alert = UIAlertController(title: "Hello Imposter", message: "Suffer", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Hello Crewmate", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}






