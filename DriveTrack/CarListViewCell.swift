//
//  CarListViewCell.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI

struct CarListViewCell: View {
    let car: Car
    var body: some View {
        HStack{
            Image("car-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(spacing: 5){
                Text("\(car.brand) \(car.model)")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("Year: \(String(car.year))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    CarListViewCell(car: MockData.sampleCar)
}
