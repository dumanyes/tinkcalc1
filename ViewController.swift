//
//  ViewController.swift
//  calc2.1
//
//  Created by Duman Yessenbay on 30.09.2023.
//

import UIKit

class ViewController: UIViewController {

    var firstNum : String = ""
    var operation: String = ""
    var secondNum: String = ""
    var haveResult: Bool = false
    var result: String = ""
    
    
    @IBAction func TappedNum(_ sender: UIButton) {
      
    }
    
    @IBOutlet weak var resultScreen: UILabel!
    
    @IBOutlet var calcButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for button in calcButtons{
            button.layer.cornerRadius = button.frame.size.height/2
        }
    }


}

