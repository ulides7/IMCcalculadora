//
//  cerebroIMC.swift
//  CalculadoraIMC
//
//  Created by marco rodriguez on 06/10/21.
//

import Foundation
import UIKit




struct cerebroIMC {
    
    var imc: objetoIMC?
    
    let color: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    //metodos para hacer el calculo
    mutating func calcularIMC(peso: Float, altura: Float){
        let alturam = altura/100
    print(alturam)
        let valorIMC = peso/(alturam * alturam)
        print(valorIMC)
        
      
        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Probabilidad de anemia", color:  #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), imagen: UIImage(named: "1"))
            print(valorIMC)
        }
        else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es noraml, Felicidades!", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(named:  "2"))
            print(valorIMC)
            
        } else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes sobrepeso atencion!", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(named: "3"))
            print(valorIMC)
        } else {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes obesidad Extrema", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(named: "5"))
            print(valorIMC)
        }
    }
    
    func retornarValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    
    func retornarColor () -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func retornarMSJ() -> String {
        return imc?.mensaje ?? "Sin MSJ"
    }
    
    func retornarImg() -> UIImage {
        return imc?.imagen ?? UIImage(named: "imc")!
    }
    
    
    
}
