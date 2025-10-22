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
            ZStack{
                List(MockData.cars){ car in
                    CarListViewCell(car: car)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedCar = car
                        }
                }
                .navigationTitle("🚗 Cars")
                .disabled(viewModel.isShowingDetail)
                
                .blur(radius: viewModel.isShowingDetail ? 20 : 0)
                
                if(viewModel.isShowingDetail){
                    CarDetailView(car: viewModel.selectedCar!, isShowingDetail: $viewModel.isShowingDetail)
                }
                
                //FAB
                if !viewModel.isShowingDetail {
                    Button {
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
                    .padding(.bottom, 24)
                    .padding(.trailing, 24)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                }
                
            }
            .sheet(isPresented: $viewModel.showAddCar){
                AddCarView()
            }
        }
    }
}
    #Preview {
        CarListView()
    }
