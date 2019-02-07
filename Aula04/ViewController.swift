//
//  ViewController.swift
//  Aula04
//
//  Created by Usuário Convidado on 06/02/19.
//  Copyright © 2019 FIAP. All rights reserved.
// https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var viResult: UIView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lbMessage: UILabel!
    
    var orders = [
        
        "Saindo um café quentinho",
        "Preparando um chá",
        "Saí daqui bebum",
        "Pimenta no toba é"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viResult.isHidden = true
        //ivImage.image = #imageLiteral(resourceName: "Logo")
        ivImage.image = UIImage(named: "Logo")
    }

    @IBAction func changeLabel(_ sender: UIButton) {
       lbMessage.text = tfName.text
       //tfName.resignFirstResponder()
      
    }


    @IBAction func changeOrder(_ sender: UISegmentedControl) {
        lbMessage.text = orders[sender.selectedSegmentIndex]
         view.endEditing(true)
    }
    
    
    @IBAction func printValue(_ sender: UISlider) {
        print(sender.value)
    }
    
    

}

