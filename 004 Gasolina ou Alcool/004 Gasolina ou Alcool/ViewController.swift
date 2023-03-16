//
//  ViewController.swift
//  004 Gasolina ou Alcool
//
//  Created by Vinicius Loss on 15/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    let formatter = NumberFormatter()

    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var tfPriceAlcohol: UITextField!
    @IBOutlet weak var tfPriceGasoline: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculateBestPrice(alcohol: String, gasoline: String){

        let formatterAlcohol    = formatter.number(from: alcohol)!.doubleValue
        let formatterGasoline   = formatter.number(from: gasoline)!.doubleValue
            
        if (formatterAlcohol / formatterGasoline) >= 0.7 {
            lbResult.text = "Melhor utilizar gasolina!"
        } else {
            lbResult.text = "Melhor utilizar álcool!"
        }
        
    }

    @IBAction func calculate(_ sender: UIButton) {
        //lbResult.text = "\(formatter.number(from: tfPriceAlcohol.text ?? "0,00")!.doubleValue)"
        
        if let priceAlcohol = tfPriceAlcohol.text, let priceGasoline = tfPriceGasoline.text, !priceAlcohol.isEmpty, !priceGasoline.isEmpty {

            calculateBestPrice(alcohol: priceAlcohol, gasoline: priceGasoline)

        } else {
            lbResult.text = "Informe os valores de gasolina e álcool!"
        }
    }
    
}
