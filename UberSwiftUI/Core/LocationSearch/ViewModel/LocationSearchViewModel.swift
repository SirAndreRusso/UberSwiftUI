//
//  LocationSearchViewModel.swift
//  UberSwiftUI
//
//  Created by Андрей Русин on 20.10.2022.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
    //MARK: - Properties
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
    func selectLocation(_ location: String) {
        self.selectedLocation = location
        print("selected location is \(self.selectedLocation)")
    }
}

//MARK: - MKLocalSearchCompleterDelegate

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
