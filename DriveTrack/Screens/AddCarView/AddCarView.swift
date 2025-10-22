//
//  AddCarView.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI

struct AddCarView: View {
    @State private var brand: String = ""
    @State private var model: String = ""
    @State private var year: String = ""
    @State private var licensePlate: String = ""
    @State private var odometer: String = ""
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Car Details")){
                    TextField("Brand", text: $brand)
                    TextField("Model", text: $model)
                    TextField("Year", text: $year)
                        .keyboardType(.numberPad)
                    TextField("License Plate", text: $licensePlate)
                    TextField("Odometer", text: $odometer)
                        .keyboardType(.numberPad)
                    
                    Button{
                        
                    }label: {
                        Text("Save Car")
                    }
                    
                }
            }
            // Emoji Title
            .navigationTitle("🚙 Add New Car")
        }
    }
}

#Preview {
    AddCarView()
}
