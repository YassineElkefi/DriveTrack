//
//  CarStore.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 23/10/2025.
//

import SwiftUI
import Combine

final class CarStore: ObservableObject{
    
    @Published var items: [Car] = []
    
    func add(_ car: Car) {
        items.append(car)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
