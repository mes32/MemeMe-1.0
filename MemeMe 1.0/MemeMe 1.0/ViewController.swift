//
//  ViewController.swift
//  MemeMe 1.0
//
//  Created by Michael Stockman on 9/4/16.
//  Copyright © 2016 Michael Stockman.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedShare(sender: UIBarButtonItem) {
        print("Pressed Share")
    }
    
    @IBAction func pressedCamera(sender: UIBarButtonItem) {
        print("Pressed Camera")
    }
    
    @IBAction func pressedPhotoAlbum(sender: UIBarButtonItem) {
        print("Pressed Photo Album")
    }


}

