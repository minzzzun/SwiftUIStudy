//
//  MapView.swift
//  SwiftUIExample
//
//  Created by 김민준 on 1/6/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5, longitude: 127.5), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    }
    
}


#Preview {
    MapView()
}
