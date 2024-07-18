//
//  MapView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))

    let locations: [NationalParkLocationModel] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: false, userTrackingMode: .none, annotationItems: locations, annotationContent: { item in
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
        })
    }
}

#Preview {
    MapView()
}
