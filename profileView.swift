//
//  profileView.swift
//  emergen
//
//  Created by Dev Mehta on 21/06/24.
//
// HELPFUL LINKS:
// https://www.swiftyplace.com/blog/swiftui-font-and-texts

import SwiftUI

struct profileView: View {
    let customBackground = Color("customBackground")
    let customWhite = Color("customWhite")
    let customBlue = Color("customBlue")
    var user: person
    var contacts: [person]
    
    var body: some View {
        NavigationSplitView {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                HStack(spacing: 20){
                    profileImage(image: user.image) // user image
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .bold()
                            .font(.title)
                            .foregroundStyle(Color.customWhite)
                        Text("View Personal Information")
                            .foregroundStyle(Color.customBlue)
                    }
                    Spacer()
                }
                VStack{
                    HStack{
                        Text("Emergency Contacts")
                            .bold()
                            .font(.title2)
                            .foregroundStyle(Color.customWhite)
                        Spacer()
                        Text("View all")
                            .foregroundStyle(Color.customBlue)
                    }
                    
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(user.emergencyContacts, id: \.self){ emergencyContact in
                                let currentContact = contacts[emergencyContact.id]
                                NavigationLink {
                                    contactDetail(user: user, currentContact: currentContact)
                                } label: {contactPicture(image: currentContact.image, name: currentContact.name)}
                            }
                        }
                    }
                }
                .listRowInsets(EdgeInsets())
                .listStyle(.inset)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Contact Information")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.customWhite)
                    HStack {
                        Text("Mobile")
                            .bold()
                            .foregroundStyle(Color.customWhite)
                        Text(user.contact.mobile)
                            .foregroundStyle(Color.customBlue)
                    }
                    HStack {
                        Text("Email")
                            .bold()
                            .foregroundStyle(Color.customWhite)
                        Text(user.contact.email)
                            .foregroundStyle(Color.customBlue)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Medical Data")
                            .bold()
                            .font(.title2)
                        .foregroundStyle(Color.customWhite)
                        Spacer()
                        Text("View All")
                            .foregroundStyle(Color.customBlue)
                    }
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack(spacing: 10) {
                                medicalDataBox1(text: "AB+", description: "Blood", size: 32)
                                medicalDataBox3(text: "100 bpm", description: "Heart Rate", size: 30)
                            }
                            HStack(spacing: 10) {
                                medicalDataBox2(text: "17 Sep 2003", description: "Birth Date", size: 22)
                                medicalDataBox1(text: "100%", description: "O2 sat", size: 25)
                            }
                        }
                        .padding(3)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Allergies & Treatments")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.customWhite)
                    ForEach(user.allergy, id: \.self){ allergy in
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
        } detail: {
            Text("Select a Contact")
        }
        .background(Color.customBackground)
    }
}

#Preview {
    let contacts = contactData().contacts
    return profileView(user: contacts[3], contacts: contacts)
}
