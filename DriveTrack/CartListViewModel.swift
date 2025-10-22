//
//  CartListViewModel.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI
import Combine

class CarListViewModel: ObservableObject {
    @Published var cars: [Car] = MockData.cars
    @Published var showAddCar = false
}
