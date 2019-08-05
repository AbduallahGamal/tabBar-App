//
//  imagee.swift
//  tabBar App
//
//  Created by Abdalla on 8/3/19.
//  Copyright © 2019 edu.data. All rights reserved.
//
import UIKit

class imagee: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    var pickerImage = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerImage.delegate = self
    }
    
    @IBAction func pickPhoto(_ sender: Any) {
        pickerImage.sourceType = .photoLibrary
        pickerImage.allowsEditing = true
        present(pickerImage, animated: true, completion: nil)
    }
    
}
extension imagee: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let im = info[UIImagePickerController.InfoKey.editedImage]{
            img.image = im as? UIImage
        }
        
        dismiss(animated: true, completion: nil)
    }
}

