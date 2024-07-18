//
//  contactPicture.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//

import SwiftUI

struct contactPicture: View {
    var image: Image
    var name: String
    let customPurple = Color("customPurple")
    
    var body: some View {
        VStack {
            image
                .resizable() // Allows picture to be resized
                .scaledToFill() // Keeps aspected ratio
                .frame(width: 100, height: 100) // sets size
                .clipped() // .frame shows only the frame of the set dimensions but still keeps the remaining image. .clipped removes the outer image that is not seen
                .clipShape(RoundedRectangle(cornerRadius: 12)) // clip shape as a circle
//                .overlay {
//                    RoundedRectangle(cornerRadius: 12).stroke(.customPurple, lineWidth: 4)
//                }
                //.shadow(color: .customPurple, radius: 7)
            Text(name)
                .foregroundStyle(Color.customWhite)
        }
    }
}

#Preview {
    contactPicture(image: Image("dev"), name: "Dev")
}
