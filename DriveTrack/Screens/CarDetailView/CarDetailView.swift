//
//  CarDetailView.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI

struct CarDetailView: View {
    let car: Car
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack{
            Image("car-placeholder")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 225)
                .clipped()
            VStack{
                Text(car.brand + " " + car.model)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                HStack(alignment: .center, spacing: 28){
                    VStack{
                        Text("Year")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text("\(String(car.year))")
                    }
                    VStack{
                        Text("License Plate")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text("\(car.licensePlate)")
                    }
                    VStack{
                        Text("Odometer")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text("\(String(car.odometer)) km")
                    }
                }
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Edit Car")
                        .frame(width: 200)
                }
                .buttonBorderShape(.roundedRectangle(radius: 10))
                .buttonStyle(.bordered)
                .tint(.brandPrimary)
                .controlSize(.large)
                
                Spacer()

            }
        }
        .frame(width: 300, height: 550)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 30)
        .overlay(Button{
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    CarDetailView(car: MockData.sampleCar, isShowingDetail: .constant(true))
}
