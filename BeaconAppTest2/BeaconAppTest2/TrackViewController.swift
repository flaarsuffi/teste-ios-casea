//
//  TrackViewController.swift
//  BeaconAppTest2
//
//  Created by Flavia Arsuffi on 10/05/20.
//  Copyright © 2020 Flavia Arsuffi. All rights reserved.
//

import UIKit
import CoreLocation
 
class TrackViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var iBeaconFoundLabel: UILabel!
    @IBOutlet weak var proximityUUIDLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var minorLabel: UILabel!
    @IBOutlet weak var accuracyLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var rssiLabel: UILabel!
    
    var locationManager : CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        locationManager = CLLocationManager.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
    }
    
    func getBeaconRegion() -> CLBeaconRegion {
        let beaconRegion = CLBeaconRegion.init(proximityUUID: UUID.init(uuidString: "31C69A98-7AB6-4111-AB97-DD139FE06906")!,
                                               identifier: "signal sender 1")
        return beaconRegion
    }
    
    func startScanningForBeaconRegion(beaconRegion: CLBeaconRegion) {
        print(beaconRegion)
        locationManager.startMonitoring(for: beaconRegion)
        locationManager.startRangingBeacons(in: beaconRegion)
    }
    
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        let beacon = beacons.last
        
        if beacons.count > 0 {
            iBeaconFoundLabel.text = "Yes"
            proximityUUIDLabel.text = beacon?.proximityUUID.uuidString
            majorLabel.text = beacon?.major.stringValue
            minorLabel.text = beacon?.minor.stringValue
            accuracyLabel.text = String(describing: beacon?.accuracy)
            if beacon?.proximity == CLProximity.unknown {
                distanceLabel.text = "Unknown Proximity"
            } else if beacon?.proximity == CLProximity.immediate {
                distanceLabel.text = "Immediate Proximity"
            } else if beacon?.proximity == CLProximity.near {
                distanceLabel.text = "Near Proximity"
            } else if beacon?.proximity == CLProximity.far {
                distanceLabel.text = "Far Proximity"
            }
            rssiLabel.text = String(describing: beacon?.rssi)
        } else {
            iBeaconFoundLabel.text = "No"
            proximityUUIDLabel.text = ""
            majorLabel.text = ""
            minorLabel.text = ""
            accuracyLabel.text = ""
            distanceLabel.text = ""
            rssiLabel.text = ""
        }
        
        print("Ranging")
    }
    
}
