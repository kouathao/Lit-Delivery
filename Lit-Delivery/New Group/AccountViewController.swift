//
//  AccountViewController.swift
//  Lit-Delivery
//
//  Created by Koua Thao on 10/10/18.
//  Copyright © 2018 Koua Thao. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    
    @IBOutlet weak var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false

    
    @IBAction func bHamburger(_ sender: Any) {
        
        if !hamburgerMenuIsVisible {
            leadingC.constant = 250
            trailingC.constant = -150
            
            hamburgerMenuIsVisible = true
        } else{
            leadingC.constant = 0
            trailingC.constant = 0
            
            hamburgerMenuIsVisible = false
            
            
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
