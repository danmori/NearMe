//
//  ContentView.swift
//  NearMe
//
//  Created by Dan Mori on 05/02/24.
//

import SwiftUI
import MapKit

enum DisplayType {
    case map
    case list
}

struct ContentView: View {
    @EnvironmentObject private var placeModel: PlacesModel
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var searchTerm: String = ""
    @State private var displayType: DisplayType = .map
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchTerm, onEditingChanged: { _ in
                
            }, onCommit: {
                
            }).textFieldStyle(.roundedBorder)
            
            Picker("Select", selection: $displayType) {
                Text("Map").tag(DisplayType.map)
                Text("List").tag(DisplayType.list)
            }.pickerStyle(.segmented)
            
            if displayType == .map {
                Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 20, longitude: 20), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), interactionModes: .all, showsUserLocation: true, userTrackingMode: $userTrackingMode)
            } else if displayType == .list {
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
