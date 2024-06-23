//
//  MapViewController.swift
//  ConneCo
//
//  Created by jaegu park on 3/31/24.
//

import UIKit
import NMapsMap
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var MapView: UIView!
    
    var locationManager = CLLocationManager()
    
    var lati: Double = 0
    var longti: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = NMFMapView(frame: self.MapView.frame)
        view.addSubview(mapView)
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            if CLLocationManager.locationServicesEnabled() {
                print("위치 서비스 On 상태")
                self.locationManager.startUpdatingLocation()
                print(self.locationManager.location?.coordinate)
                self.lati = self.locationManager.location?.coordinate.latitude ?? 0
                self.longti = self.locationManager.location?.coordinate.longitude ?? 0
                
                let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: self.lati, lng: self.longti))
                cameraUpdate.animation = .easeIn
                mapView.moveCamera(cameraUpdate)
                
                let marker = NMFMarker()
                marker.iconImage = NMFOverlayImage(name: "ConneCo_marker_event")
                marker.position = NMGLatLng(lat: self.lati, lng: self.longti)
                marker.mapView = mapView
            } else {
                print("위치 서비스 Off 상태")
            }
        }
    }
}
