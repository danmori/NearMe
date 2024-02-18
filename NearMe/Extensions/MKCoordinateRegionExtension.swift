//
//  MKCoordinateRegionExtension.swift
//  NearMe
//
//  Created by Dan Mori on 09/02/24.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    static var defaultRegion: MKCoordinateRegion {
        return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.726819, longitude: -95.393692), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    }
}
