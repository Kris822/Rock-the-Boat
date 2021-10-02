//
//  ViewController.swift
//  Rock the Boat
//
//  Created by Lee, Christopher on 10/2/21.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var buttonFour: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonOne?.setTitle(NSLocalizedString("button1", comment: "this animation makes the boat dissapear the reappear"), for: .normal)
        buttonTwo?.setTitle(NSLocalizedString("button2", comment: "this animation makes the buttons change"), for: .normal)
        buttonThree?.setTitle(NSLocalizedString("button3", comment: "this animation makes the boat rock back and forth"), for: .normal)
        buttonFour?.setTitle(NSLocalizedString("button4", comment: "this animation makes the boat grow or shrink"), for: .normal)
    }


    @IBOutlet weak var theBoat: UIImageView!
    
    @IBOutlet weak var boatWidth: NSLayoutConstraint!
    
    @IBOutlet weak var buttonGroup: UIStackView!
    
    

    
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

