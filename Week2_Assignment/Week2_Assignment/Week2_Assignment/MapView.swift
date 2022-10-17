//
//  MapView.swift
//  Week2_Assignment
//
//  Created by 김응관 on 2022/10/18.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var london = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.55502801178261, longitude: 0.10838048973802472), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $london, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .edgesIgnoringSafeArea(.all)
    }
}



