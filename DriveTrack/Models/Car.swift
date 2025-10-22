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
    
    static let cars = [
        Car(brand: "Toyota", model: "GT86", year: 2009, LicensePlate: "130 TU 9321", Odometer: 210501, imageURL: ""),
        Car(brand: "Honda", model: "Civic", year: 2015, LicensePlate: "456 AB 1234", Odometer: 150300, imageURL: ""),
        Car(brand: "Ford", model: "Mustang", year: 2018, LicensePlate: "789 CD 5678", Odometer: 80000, imageURL: ""),
        Car(brand: "Chevrolet", model: "Camaro", year: 2020, LicensePlate: "321 EF 8765", Odometer: 45000, imageURL: ""),
        Car(brand: "BMW", model: "M3", year: 2017, LicensePlate: "654 GH 4321", Odometer: 60000, imageURL: "")
    ]
}
