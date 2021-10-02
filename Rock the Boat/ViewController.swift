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
    
    @IBOutlet weak var boatWidth: NSLayoutConstraint!
    
    @IBOutlet weak var buttonGroup: UIStackView!
    
    
    @IBAction func buttonOne(_ sender: Any) {
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
    }
    @IBAction func buttonThree(_ sender: Any) {
    }
    @IBAction func ButtonFour(_ sender: Any) {
    }
    
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
        
        let transform = CGAffineTransform.identity.scaledBy(x: 0.01, y: 0.01)

        buttonGroup.transform = transform
        
        UIView.animate(withDuration: 2, animations: {
            self.buttonGroup.transform = CGAffineTransform.identity
        })
        
        
    }
    
    @IBAction func boatRocking(_ sender: Any) {
    
        let transform = CGAffineTransform.identity.translatedBy(x: 40, y: -25)
        
        self.theBoat.transform = transform
        
        UIView.animate(withDuration: 1.5, animations: {

            self.theBoat.transform = CGAffineTransform.identity
        }, completion: {_ in
            UIView.animate(withDuration: 1.5, animations: {
                self.theBoat.transform = CGAffineTransform.identity.translatedBy(x: -40, y: -25)
            }, completion: {_ in
                UIView.animate(withDuration: 1.5, animations: {
                    self.theBoat.transform = CGAffineTransform.identity.translatedBy(x: 20, y: 12.5)
                })
            })
        })
    }
    
    @IBAction func makeBoatSmaller(_ sender: Any) {
        
        if(boatWidth.constant <= 150){
            UIView.animate(withDuration: 2, animations: {
                self.boatWidth.constant += 50
                self.view.layoutIfNeeded()
            })
        }
        else{
            UIView.animate(withDuration: 2, animations: {
                self.boatWidth.constant -= 50
                self.view.layoutIfNeeded()
            })
        }
        
        
    }
    
}

