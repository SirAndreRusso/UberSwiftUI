//
//  LocationManager.swift
//  UberSwiftUI
//
//  Created by Андрей Русин on 19.10.2022.
//

import CoreLocation
//MARK: - gets permission to access location first, then stops to upgrade location because of mapview coordinator will process it after
class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
}
