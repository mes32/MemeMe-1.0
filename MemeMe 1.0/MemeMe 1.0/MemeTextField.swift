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
        NSStrokeColorAttributeName : UIColor.blackColor(),
        NSForegroundColorAttributeName : UIColor.whiteColor(),
        NSStrokeWidthAttributeName : -4.0
    ]
    
    var defaultText: String = ""
    var edited: Bool = false
    
    func setup(defaultText newDefaultText: String, delegate newDelegate: UITextFieldDelegate) {
        defaultText = newDefaultText
        edited = false
        
        delegate = newDelegate
        text = defaultText
        defaultTextAttributes = memeTextAttributes
        textAlignment = .Center
    }
    
    func reset() {
        super.text = defaultText
        edited = false
    }
    
    func wasEdited() -> Bool {
        return edited
    }
}