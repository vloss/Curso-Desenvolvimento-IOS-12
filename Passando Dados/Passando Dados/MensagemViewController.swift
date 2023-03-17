//
//  MensagemViewController.swift
//  Passando Dados
//
//  Created by Vinicius Loss on 17/03/23.
//

import UIKit

class MensagemViewController: UIViewController {

    var message: String = ""
    
    @IBOutlet weak var lbMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message

        // Do any additional setup after loading the view.
    }
}
