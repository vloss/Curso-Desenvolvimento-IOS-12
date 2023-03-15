//
//  ViewController.swift
//  003 Frases do Dia
//
//  Created by Vinicius Loss on 14/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var quotes: [String] = []
    
    @IBOutlet weak var lbQuoteDay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        quotes.append("Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo!!!")
        quotes.append("Às vezes, a vida vai te acertar um tijolo na cabeça. Não perca a fé.")
        quotes.append("A vida não é sobre ter, é sobre dar e ser.")
        quotes.append("Uma ideia é um feito de associação.")
        quotes.append("Nós nos tornamos aquilo que pensamos.")
    }

    @IBAction func newQuoteDay(_ sender: UIButton) {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        lbQuoteDay.text = quotes[index]
    }
}

