//
//  ViewController.swift
//  Rock the Boat
//
//  Created by Lee, Christopher on 10/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBOutlet weak var theBoat: UIImageView!
    
    @IBOutlet var buttonGroup: [UIStackView]!
    
    @IBAction func hideBoat(_ sender: Any) {
        
        UIView.animate(withDuration: 2, animations: {
            self.theBoat.alpha = 0
        }, completion: { _ in
            UIView.animate(withDuration: 2, animations: {
                self.theBoat.alpha = 1
            })
        })
        
    }
    
    @IBAction func moveButtons(_ sender: Any) {
        UIView.animate(withDuration: 2, animations: {
            self.buttonGroup.
        })
    }
    
    @IBAction func boatRocking(_ sender: Any) {
    }
    
}

