//
//  Utilities.swift
//  GeoFence
//
//  Created by Kristopher Kane on 8/5/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import Foundation
import MapKit

func centerMapOnUserLocationForMapView(mapView:MKMapView) {
    if let coordinate = mapView.userLocation.location?.coordinate {
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000)
        mapView.setRegion(region, animated: true)
    }
}