//
//  profileImage.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//

import SwiftUI

struct profileImage: View {
    var image: Image
    let customPurple = Color("customPurple")

    var body: some View {
        image
            .resizable() // Allows picture to be resized
            .scaledToFill() // Keeps aspected ratio
            .frame(width: 100, height: 100) // sets size
            .clipped() // .frame shows only the frame of the set dimensions but still keeps the remaining image. .clipped removes the outer image that is not seen
            .clipShape(Circle()) // clip shape as a circle
            .overlay {
                Circle().stroke(.customPurple, lineWidth: 4)
            }
            .shadow(color: .customPurple, radius: 7)
    }
}

#Preview {
    profileImage(image: Image("dev"))
}
