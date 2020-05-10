//
//  MapView.swift
//  HelloWorld
//
//  Created by 丹下敦矢 on 2020/05/10.
//  Copyright © 2020 丹下敦矢. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let ido = 35.4531362
    let keido = 139.6323837
    let annoTitle = "イマココ"
    
    func makeUIView(context: Context) -> MKMapView {
        let view = MKMapView(frame: .zero)
        return view
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: ido, longitude: keido)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = annoTitle
        view.addAnnotations([annotation])
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
