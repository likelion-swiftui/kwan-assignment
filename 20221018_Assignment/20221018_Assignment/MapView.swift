//
//  MapView.swift
//  20221018_Assignment
//
//  Created by 김응관 on 2022/10/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    
    var wheres: CLLocationCoordinate2D
    @State private var london = MKCoordinateRegion()
    
    
    
    var body: some View {
        Map(coordinateRegion: $london)
            .onAppear {
                sets(wheres)
            }
    }
    
    func sets(_ locates: CLLocationCoordinate2D) {
        london = MKCoordinateRegion(
            center: locates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(wheres: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
        )
    }
}
