//
//  ViewController.swift
//  html5Game
//
//  Created by Retailogy on 09/02/21.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startGameButtonClicked(_ sender: Any) {
        
        let gameVC = storyboard?.instantiateViewController(withIdentifier: "Game") as! GameVC
        gameVC.modalPresentationStyle = .fullScreen
        present(gameVC, animated: true, completion: nil)
        
    }
    
}

