//
//  ViewController.swift
//  002 Gerador de Numeros
//
//  Created by Vinicius Loss on 14/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbNumber: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getNumberRandom(_ sender: UIButton) {
        //sender.setImage(UIImage(named: "botaogerar-pressionado"), for: .normal)
        
        lbNumber.text = "\(arc4random_uniform(10))"
        
//        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (timer) in
//            sender.setImage(UIImage(named: "botaogerar"), for: .normal)
//        }
        
    }
}

