//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mackley Magalhães da Silva on 12/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    var bmiValue  = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50 )
        view.addSubview(label)
        
        
        
    }
    
    
    
    
}
