//
//  LocationManager.swift
//  Maps
//
//  Created by Tessa Murray on 2/3/25.
//

import CoreLocation
import SwiftUI

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var geocoder = CLGeocoder()
    var locationManager = CLLocationManager()
    override init() {
            super.init()
            locationManager.delegate = self
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
}
