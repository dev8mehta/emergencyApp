//
//  medicalDataBox.swift
//  emergen
//
//  Created by Dev Mehta on 03/07/24.
//

import SwiftUI

struct medicalDataBox1: View {
    var text: String
    var description: String
    var size: Int
    var body: some View {
        VStack {
            Text(text)
                .foregroundStyle(Color.customPurple)
                .font(.custom("ArialRoundedMTBold", size: CGFloat(size)))
            Text(description)
                .foregroundStyle(Color.customPurple)
        }
                .frame(width: 75, height: 75)
            .background(RoundedRectangle(cornerRadius: 4).stroke(.customPurple, lineWidth: 4))
    }
}

struct medicalDataBox2: View {
    var text: String
    var description: String
    var size: Int
    var body: some View {
        VStack {
            Text(text)
                .foregroundStyle(Color.customBackground)
                .font(.custom("ArialRoundedMTBold", size: CGFloat(size)))
            Text(description)
                .foregroundStyle(Color.customBackground)
        }
            .frame(width: 150, height: 75)
            .background(RoundedRectangle(cornerRadius: 4).fill(.customPurple).stroke(.customPurple, lineWidth: 4))
    }
}

struct medicalDataBox3: View {
    var text: String
    var description: String
    var size: Int
    var body: some View {
        VStack {
            Text(text)
                .foregroundStyle(Color.customPurple)
                .font(.custom("ArialRoundedMTBold", size: CGFloat(size)))
            Text(description)
                .foregroundStyle(Color.customPurple)
        }
                .frame(width: 150, height: 75)
            .background(RoundedRectangle(cornerRadius: 4).stroke(.customPurple, lineWidth: 4))
    }
}


#Preview {
    Group {
        medicalDataBox1(text: "AB+", description: "Blood", size: 33)
        medicalDataBox2(text: "17 Sep 2003", description: "Birth Date", size: 22)
        medicalDataBox3(text: "100 bpm", description: "Heart Rate", size: 30)

    }
}
