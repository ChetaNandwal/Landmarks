//
//  mapview.swift
//  Landmarks
//
//  Created by chetan nandwal on 20/08/22.
//

import SwiftUI
import MapKit

struct mapview: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 29.9663211, longitude: 76.8240076),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear(){
                setRegion(coordinate)
            }
    }

private func setRegion(_ coordinate:CLLocationCoordinate2D ){
    region = MKCoordinateRegion(
        center: coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
}
}

struct mapview_Previews: PreviewProvider {
    static var previews: some View {
        mapview(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
