//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Vinicius Loss on 14/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbLegend: UILabel!
    @IBOutlet weak var tfAgeDog: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getAgeDogInAgeHuman(_ sender: Any) {
        lbLegend.text = "A idade do cachorro em anos humanos é: \(Int(tfAgeDog.text!)! * 7)"
    }
    
}

