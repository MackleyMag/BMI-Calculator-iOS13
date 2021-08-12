//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var imc = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanger(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)  )m"
    }
    @IBAction func weightChanger(_ sender: UISlider) {
        weightLabel.text = "\( Int(sender.value) )kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let altura = heightSlider.value
        let peso = weightSlider.value
        
        let imcCalculo = peso / pow(altura, 2)
        imc = String(format: "%.1f", imcCalculo )
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.description as! ResultsViewController
            destinationVC.imcValue =  "0.0"
            
        }
    }
}

