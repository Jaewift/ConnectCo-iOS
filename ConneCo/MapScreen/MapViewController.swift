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
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var MapView: UIView!
    
    var allButton: UIButton!
    var eventButton: UIButton!
    var couponButton: UIButton!
    
    var locationManager = CLLocationManager()
    
    var lati: Double = 0
    var longti: Double = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
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
                print(self.locationManager.location?.coordinate ?? 0)
                self.lati = self.locationManager.location?.coordinate.latitude ?? 0
                self.longti = self.locationManager.location?.coordinate.longitude ?? 0
                
                let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: self.lati, lng: self.longti))
                cameraUpdate.animation = .easeIn
                mapView.moveCamera(cameraUpdate)
                
                let eventmarker = NMFMarker()
                eventmarker.iconImage = NMFOverlayImage(name: "ConneCo_marker_event")
                eventmarker.position = NMGLatLng(lat: self.lati + 0.002, lng: self.longti + 0.002)
                eventmarker.mapView = mapView
                
                let couponmarker = NMFMarker()
                couponmarker.iconImage = NMFOverlayImage(name: "ConneCo_marker_coupon")
                couponmarker.position = NMGLatLng(lat: self.lati - 0.002, lng: self.longti - 0.002)
                couponmarker.mapView = mapView
            } else {
                print("위치 서비스 Off 상태")
            }
        }
        
        setupButtons()
        
        topView.layer.masksToBounds = false// any value you want
        topView.layer.shadowOpacity = 0.3// any value you want
        topView.layer.shadowRadius = 5 // any value you want
        topView.layer.shadowOffset = .init(width: 0, height: 2)
    }
    
    func setupButtons() {
        // Create the buttons
        allButton = createButton(title: "전체보기")
        eventButton = createButton(title: "이벤트보기")
        couponButton = createButton(title: "쿠폰보기")
        
        allButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        allButton.addTarget(self, action: #selector(couponTapped(_:)), for: .touchUpInside)
        eventButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        couponButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        allButton.layer.masksToBounds = false// any value you want
        allButton.layer.shadowOpacity = 0.3// any value you want
        allButton.layer.shadowRadius = 5 // any value you want
        allButton.layer.shadowOffset = .init(width: 0, height: 3)
        
        eventButton.layer.masksToBounds = false// any value you want
        eventButton.layer.shadowOpacity = 0.3// any value you want
        eventButton.layer.shadowRadius = 5 // any value you want
        eventButton.layer.shadowOffset = .init(width: 0, height: 3)
        
        couponButton.layer.masksToBounds = false// any value you want
        couponButton.layer.shadowOpacity = 0.3// any value you want
        couponButton.layer.shadowRadius = 5 // any value you want
        couponButton.layer.shadowOffset = .init(width: 0, height: 3)
        
        
        // Create a stack view
        let stackView = UIStackView(arrangedSubviews: [allButton, eventButton, couponButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 13
        
        // Add the stack view to the view
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // Set up constraints
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 12),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            stackView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
        
    func createButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1)
        button.layer.cornerRadius = 15
        return button
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        // Reset colors of all buttons
        allButton.backgroundColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1)
        eventButton.backgroundColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1)
        couponButton.backgroundColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1)
        allButton.setTitleColor(.white, for: .normal)
        eventButton.setTitleColor(.white, for: .normal)
        couponButton.setTitleColor(.white, for: .normal)
        
        // Change the background color of the selected button
        sender.backgroundColor = UIColor.white
        sender.setTitleColor(.black, for: .normal)
    }
    
    @objc func couponTapped(_ sender: UIButton) {
        guard let bottomSheetVC = self.storyboard?.instantiateViewController(withIdentifier: "PlaceInfoVC") as? PlaceInfoViewController else {return}
        guard let sheet = bottomSheetVC.presentationController as? UISheetPresentationController else {
            return
        }
        sheet.detents = [.medium(), .large()]
        sheet.largestUndimmedDetentIdentifier = .large
        sheet.prefersGrabberVisible = true
        
        self.present(bottomSheetVC, animated: true)
    }
}
