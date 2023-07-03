//
//  Musicians.swift
//  MusicianClass
//
//  Created by Buse Keklik on 1.07.2023.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}

class Musicians{
    
    //property
    var name : String = ""
    var age : Int = 0
    var instrument : String = ""
    var type : MusicianType
    //Initiliazer (Constructor)
    init(nameInit:String, ageInit:Int, instrumentInit:String, typeInit:MusicianType){
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing(){
        print("nothing else matters")
    }
}
