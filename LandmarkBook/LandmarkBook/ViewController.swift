//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Buse Keklik on 29.06.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landMarkNames.append("Colosseum")
        landMarkNames.append("Great Wall")
        landMarkNames.append("Kremlin")
        landMarkNames.append("Stonhenge")
        landMarkNames.append("San Francisco")
        
        landMarkImages.append(UIImage(named: "colesseum")!)
        landMarkImages.append(UIImage(named: "great-wall")!)
        landMarkImages.append(UIImage(named: "kremlin")!)
        landMarkImages.append(UIImage(named: "stonehenge")!)
        landMarkImages.append(UIImage(named: "san-francisco")!)




    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landMarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landMarkNames[indexPath.row]
        chosenLandmarkImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landMarkNames.remove(at: indexPath.row)
            self.landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

