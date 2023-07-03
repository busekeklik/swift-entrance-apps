//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Buse Keklik on 24.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isManga = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
        if isManga == true {
            imageView.image = UIImage(named: "mor-ve-otesi")
            myLabel.text = "Mor ve Ötesi"
            isManga = false
        }
        else {
            imageView.image = UIImage(named: "manga")
            myLabel.text = "Manga"
            isManga = true
        }
    }
    

}

