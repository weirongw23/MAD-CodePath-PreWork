//
//  ViewController.swift
//  MAD-CodePath
//
//  Created by Weirong Wu on 1/2/21.
//

import UIKit

class ViewController: UIViewController {

    // Outlets: Modify things designed
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor;
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        // Code runs whenever button is pressed
        textLabel.textColor = UIColor.orange
    }
    
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow;
        
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        // textLabel.text should be textField.text (if not empty)
        // textLabel.text = "Goodbye! 👋"
        if ((textField.text?.isEmpty) != nil) {
            textLabel.text = "Goodbye! 👋"
        } else {
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Peter!";
        textLabel.textColor = UIColor.darkText;
        view.backgroundColor = backgroundColor;
    }
    
}

