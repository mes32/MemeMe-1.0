//
//  ViewController.swift
//  MemeMe 1.0
//
//  Created by Michael Stockman on 9/4/16.
//  Copyright © 2016 Michael Stockman.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldTop: MemeTextField!
    @IBOutlet weak var textFieldBottom: MemeTextField!
    
    var isEmptyTop: Bool = true
    var isEmptyBottom: Bool = true
    
    let startingTextTop = "TOP TEXT"
    let startingTextBottom = "BOTTOM TEXT"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldTop.setup(defaultText: startingTextTop, delegate: self)
        textFieldBottom.setup(defaultText: startingTextBottom, delegate: self)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        let memeTextField = textField as! MemeTextField
        if (!memeTextField.edited) {
            memeTextField.text = ""
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        let memeTextField = textField as! MemeTextField
        if (memeTextField.text == "" && memeTextField.edited) {
            memeTextField.reset()
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let memeTextField = textField as! MemeTextField
        memeTextField.edited = true
        
        // Convert typed text to uppercase
        // I grabbed this line from Stackoverflow: http://stackoverflow.com/questions/21092182/uppercase-characters-in-uitextfield
        memeTextField.text = (memeTextField.text! as NSString).stringByReplacingCharactersInRange(range, withString:string.uppercaseString)
        
        return false
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

