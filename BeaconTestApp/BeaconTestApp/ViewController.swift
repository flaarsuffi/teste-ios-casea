//
//  ViewController.swift
//  BeaconTestApp
//
//  Created by Flavia Arsuffi on 10/05/20.
//  Copyright © 2020 Flavia Arsuffi. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var distanceLabel: UILabel!
    var locationManager: CLLocationManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            if CLLocationManager.isMonitoringAvailable(for: CLBeacon.self) {
                if CLLocationManager.isRangingAvailable() {
                    startScanning()
                }
            }
        }
    }
    
    func startScanning(){
        let uuid = UUID(uuidString: "22A08C32-2E93-444F-9726-F94549F16911")!
        let beaconRegion = CLBeaconRegion.i
        
        locationManager?.startMonitoring(for: beaconRegion)
        locationManager?.startRangingBeacons(in: beaconRegion)
    }
    
    func update(distance: CLProximity) {
        UIView.animate(withDuration: 1) {
            switch distance {
                
            case .far:
                self.view.backgroundColor = .orange
                self.distanceLabel.text = "FAR"
                
            case .near:
                self.view.backgroundColor = .green
                self.distanceLabel.text = "NEAR"
                
            case .immediate:
                self.view.backgroundColor = .blue
                self.distanceLabel.text = "RIGHT HERE"
                
            default:
                self.view.backgroundColor = .lightGray
                self.distanceLabel.text = "UNKNOWN"
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        if let beacon = beacons.first {
            update(distance: beacon.proximity)
        } else {
            update(distance: .unknown)
        }
    }
    
}
