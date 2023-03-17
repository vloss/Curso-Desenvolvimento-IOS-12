//
//  ResultViewController.swift
//  006 Cara ou Coroa
//
//  Created by Vinicius Loss on 17/03/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var nameImage: String = ""

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !nameImage.isEmpty {
            image.image = UIImage(named: nameImage)
        }
    }
}
