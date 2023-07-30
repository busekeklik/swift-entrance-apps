//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Buse Keklik on 29.07.2023.
//

import UIKit

//var globalName = ""
//var globalType = ""
//var globalAtmosphere = ""

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var placeNameText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var placeAtmosphereText: UITextField!
    
    
    @IBOutlet weak var placeImageText: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeImageText.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        placeImageText.addGestureRecognizer(gestureRecognizer)

    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        if placeNameText.text != "" && placeTypeText.text != "" && placeAtmosphereText.text != "" {
            if let chosenImage = placeImageText.image {
                let placeModel = PlaceModel.sharedInstance
                placeModel.placeName = placeNameText.text!
                placeModel.placeType = placeTypeText.text!
                placeModel.placeAtmosphere = placeAtmosphereText.text!
                placeModel.placeImage = chosenImage
            }
            
             performSegue(withIdentifier: "toMapVC", sender: nil)
        }else {
            let alert = UIAlertController(title: "Error", message: "Place/Name/Atmosphere??", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
        
        
       
    }
    
    @objc func chooseImage() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImageText.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
}
