//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Buse Keklik on 30.07.2023.
//

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    var placeLatitude = ""
    var placeLongitude = ""
    
    private init() {}
}
