//
//  ViewController.swift
//  SegueApp
//
//  Created by Buse Keklik on 23.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //LifeCycle
        print("viewDidLoad functions called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
            
        }
    }
    
}

