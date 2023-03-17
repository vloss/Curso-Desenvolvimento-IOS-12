//
//  ViewController.swift
//  006 Cara ou Coroa
//
//  Created by Vinicius Loss on 17/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var options: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "btPlay" {
            
            options.append("moeda_cara")
            options.append("moeda_coroa")
            
            let vc = segue.destination as! ResultViewController
            vc.nameImage = options[Int(arc4random_uniform(UInt32(options.count)))]
        }
    }


}

