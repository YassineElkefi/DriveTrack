//
//  CarListView.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI

struct CarListView:View {
    
    @StateObject private var viewModel = CarListViewModel()
    
    var body: some View {
        NavigationStack{
            List(MockData.cars){ car in
                CarListViewCell(car: car)
            }
            .navigationTitle("🚗 Cars")
            .overlay(Button{
                viewModel.showAddCar.toggle()
            } label: {
                Image(systemName: "plus")
                    .font(.title)
                    .padding()
                    .background(.brandPrimary.gradient)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .shadow(radius: 40)
            }
            .padding(), alignment: .bottomTrailing)
        }
        .sheet(isPresented: $viewModel.showAddCar){
            AddCarView()
        }
    }
}

#Preview {
    CarListView()
}
