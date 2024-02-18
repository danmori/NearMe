//
//  PlacesModel.swift
//  NearMe
//
//  Created by Dan Mori on 09/02/24.
//

import Foundation
import MapKit

@MainActor
class PlacesModel: ObservableObject {
    private let locationManager: LocationManager
    @Published var currentRegion: MKCoordinateRegion?
    
    init() {
        locationManager = LocationManager()
    }
    
    func getCurrentRegion() {
        if let location = locationManager.location {
            currentRegion = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        }
    }
    
}
