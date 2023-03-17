//
//  ViewController.swift
//  Passando Dados
//
//  Created by Vinicius Loss on 17/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Chamado toda vez que uma segue é disparada
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Para identificar o destino.
        if segue.identifier == "sendMessage" {
            let vc = segue.destination as! MensagemViewController
            if let message = tfMessage.text {
                vc.message = message
            }
        }
    }
}
