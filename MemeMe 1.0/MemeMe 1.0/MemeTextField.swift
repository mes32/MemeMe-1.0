//
//  MemeTextField.swift
//  MemeMe 1.0
//
//  Created by Michael Stockman on 9/5/16.
//  Copyright © 2016 Michael Stockman.
//

import Foundation
import UIKit

class MemeTextField: UITextField {
    
    private let memeTextAttributes = [
        NSFontAttributeName : UIFont(name: "HelveticaNeue-CondensedBlack", size: 36)!,
        NSStrokeColorAttributeName : UIColor.redColor(),
        NSForegroundColorAttributeName : UIColor.whiteColor(),
        NSStrokeWidthAttributeName : -4.0
    ]
    
    var defaultText: String = ""
    var edited: Bool = false
    
    func setup(defaultText newDefaultText: String, delegate newDelegate: UITextFieldDelegate) {
        print("In MemeTextField setup()")
        
        defaultText = newDefaultText
        delegate = newDelegate

        super.text = "TEST TEST"
        print("super.text = \(super.text)")
        defaultTextAttributes = memeTextAttributes
        textAlignment = .Center
    }
    
    func reset() {
        super.text = defaultText
        edited = false
    }
}