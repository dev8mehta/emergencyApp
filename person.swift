//
//  person.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//

import Foundation
import SwiftUI

struct person: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var emergencyContacts: [emergencyContact]
    
    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
    var image: Image {generateImage(imageName: imageName)}
    var contact: contact
    var allergy: [allergy]
}

func generateImage(imageName: String)-> Image{
    if (imageName == "default"){
        return Image(systemName: "person.circle.fill")
    }
    return Image(imageName)
}
