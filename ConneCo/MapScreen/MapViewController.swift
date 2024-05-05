//
//  MapViewController.swift
//  ConneCo
//
//  Created by jaegu park on 3/31/24.
//

import UIKit
import NMapsMap

class MapViewController: UIViewController {
    
    @IBOutlet weak var MapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = NMFMapView(frame: self.MapView.frame)
        view.addSubview(mapView)
    }
}
