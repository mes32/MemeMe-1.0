//
//  ViewController.swift
//  MemeMe 1.0
//
//  Created by Michael Stockman on 9/4/16.
//  Copyright © 2016 Michael Stockman.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIButton!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PhotoAlbumButton(sender: AnyObject) {
        print("Pressed Photo Album Button")
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func CameraButton(sender: AnyObject) {
        print("Pressed Camera Button")
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    /*@IBAction func pickAnImage(sender: AnyObject) {

    }*/
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = pickedImage
            //imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            imageView.sizeToFit()
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

