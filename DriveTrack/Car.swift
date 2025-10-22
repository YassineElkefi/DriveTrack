//
//  Car.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import Foundation


struct Car: Codable, Identifiable{
    var id = UUID()
    let brand: String
    let model: String
    let year: Int
    let LicensePlate :String
    let Odometer: Int
    let imageURL: String
}

struct MockData{
    static let sampleCar = Car(brand: "Toyota", model: "GT86", year: 2009, LicensePlate: "130 TU 9321", Odometer: 210501, imageURL: "")
    
    static let cars = [sampleCar, sampleCar, sampleCar, sampleCar, sampleCar, sampleCar, sampleCar, sampleCar,sampleCar]
}
