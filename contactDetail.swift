//
//  contactDetail.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//

import SwiftUI
import MapKit

struct contactDetail: View {
    var user: person
    var currentContact: person
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        ScrollView {
            Map(coordinateRegion: $region, showsUserLocation: true)
                        .frame(width: 400, height: 300)
            VStack(alignment: .leading, spacing: 40) {
                HStack(spacing: 20){
                    profileImage(image: currentContact.image) // user image
                    VStack(alignment: .leading) {
                        Text(currentContact.name)
                            .bold()
                            .font(.title)
                            .foregroundStyle(Color.customWhite)
                        Text("Emergency Contact")
                            .foregroundStyle(Color.red)
                    }
                    Spacer()
                }
                
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Contact Information")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.customWhite)
                    HStack {
                        Text("Mobile")
                            .bold()
                            .foregroundStyle(Color.customWhite)
                        Text(currentContact.contact.mobile)
                            .foregroundStyle(Color.customBlue)
                    }
                    HStack {
                        Text("Email")
                            .bold()
                            .foregroundStyle(Color.customWhite)
                        Text(currentContact.contact.email)
                            .foregroundStyle(Color.customBlue)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Medical Information")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.customWhite)
                    Text("This information is only available if \(currentContact.name) activates their emergency protocol.")
                        .foregroundStyle(Color.customWhite)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Allergies & Treatments")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.customWhite)
                    ForEach(currentContact.allergy, id: \.self){ allergy in
                        HStack {
                            Text("\(allergy.allergen):")
                                .bold()
                                .foregroundStyle(Color.customWhite)
                            Text(allergy.medication)
                                .foregroundStyle(Color.customWhite)
                        }
                    }
                }

            }
            .padding()
        }
        .background(Color.customBackground)
    }
}

#Preview {
    let contacts = contactData().contacts
    return contactDetail(user: contacts[0], currentContact: contacts[1])
}
