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
    let licensePlate :String
    let odometer: Int
    let imageURL: String
}

struct MockData{
    static let sampleCar = Car(brand: "Toyota", model: "GT86", year: 2009, licensePlate: "130 TU 9321", odometer: 210501, imageURL: "")
    
    static let cars = [
        Car(brand: "Toyota", model: "GT86", year: 2009, licensePlate: "130 TU 9321", odometer: 210501, imageURL: ""),
        Car(brand: "Honda", model: "Civic", year: 2015, licensePlate: "456 AB 1234", odometer: 150300, imageURL: ""),
        Car(brand: "Ford", model: "Mustang", year: 2018, licensePlate: "789 CD 5678", odometer: 80000, imageURL: ""),
        Car(brand: "Chevrolet", model: "Camaro", year: 2020, licensePlate: "321 EF 8765", odometer: 45000, imageURL: ""),
        Car(brand: "BMW", model: "M3", year: 2017, licensePlate: "654 GH 4321", odometer: 60000, imageURL: "")
    ]
}
