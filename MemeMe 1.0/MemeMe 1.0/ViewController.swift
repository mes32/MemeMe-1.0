//
//  ViewController.swift
//  MemeMe 1.0
//
//  Created by Michael Stockman on 9/4/16.
//  Copyright © 2016 Michael Stockman.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldTop: UITextField!
    @IBOutlet weak var textFieldBottom: UITextField!
    
    var isEmptyTop: Bool = true
    var isEmptyBottom: Bool = true
    
    let startingTextTop = "TOP TEXT"
    let startingTextBottom = "BOTTOM TEXT"
    let memeTextAttributes = [
        NSFontAttributeName : UIFont(name: "HelveticaNeue-CondensedBlack", size: 36)!,
        NSStrokeColorAttributeName : UIColor.blackColor(),
        NSForegroundColorAttributeName : UIColor.whiteColor(),
        NSStrokeWidthAttributeName : -4.0
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textFieldTop.text = startingTextTop
        textFieldTop.delegate = self
        textFieldTop.defaultTextAttributes = memeTextAttributes
        textFieldTop.textAlignment = .Center
        
        textFieldBottom.text = startingTextBottom
        textFieldBottom.delegate = self
        textFieldBottom.defaultTextAttributes = memeTextAttributes
        textFieldBottom.textAlignment = .Center

    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if (textField.text == "") {
            if (textField == textFieldTop) {
                textField.text = startingTextTop
            } else if (textField == textFieldBottom) {
                textField.text = startingTextBottom
            }
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

