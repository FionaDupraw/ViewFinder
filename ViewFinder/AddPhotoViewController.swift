//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    var imagePicker = UIImagePickerController()
    //this is an object where we can access to store out photos/take photos within the class Image Picker Controller
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        //this tells out object that any info(photos) is going to go back to this class (self)
    }
    
   
    
  
    @IBAction func takePicture(_ sender: Any) {
    
    
        imagePicker.sourceType = .camera
        //this allows me to open my camera

        present(imagePicker, animated: true, completion: nil)
        //present is a built in function in apple that allows us to access out camera information
        //animated allows for a smooth transition if we set it to true
        //completion means that we exit out after we choose out photo
    }
    
    
    @IBAction func photoLibrary(_ sender: Any) {
    
        imagePicker.sourceType = .photoLibrary
        //opens library

        present(imagePicker, animated: true, completion: nil)
        //this accesses out photo library and saves a phot of our choice to our class! And then when its done, it quits.
    }
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //the selected image will replace the stock photo in our Image View with the following code:
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { newImage.image = selectedImage}
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func savePhotoTapped(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
    }
    
}
