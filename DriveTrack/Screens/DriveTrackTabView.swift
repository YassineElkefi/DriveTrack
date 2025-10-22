//
//  ContentView.swift
//  DriveTrack
//
//  Created by Yassine EL KEFI on 22/10/2025.
//

import SwiftUI

struct DriveTrackTabView: View {
    var body: some View {
        TabView{
            Tab("Cars", systemImage: "car"){
                CarListView()
            }
            
            Tab("Maintenance", systemImage: "car.badge.gearshape"){
                MaintenanceListView()
            }
            Tab("Settings", systemImage: "gear"){
                SettingsView()
            }
        }
        .tint(Color(.brandPrimary))
    }
}

#Preview {
    DriveTrackTabView()
}
