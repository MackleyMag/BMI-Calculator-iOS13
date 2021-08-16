//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mackley Magalhães da Silva on 12/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var imc: IMC?
    
    
    
    
    func getValorIMC() -> String {
        return String(format: "%.1f", imc?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateIMC(peso: Float, altura: Float){
        let imcValue = altura / pow(peso, 2)
        
        if imcValue < 18.5{
            imc = IMC(value: imcValue, advice: "Coma mais tortas de Frango", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if imcValue < 24.9{
            imc = IMC(value: imcValue, advice: "Magro como uma Pena", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            imc = IMC(value: imcValue, advice: "Coma menos", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
}
