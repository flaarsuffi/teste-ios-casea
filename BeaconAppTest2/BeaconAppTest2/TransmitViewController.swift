//
//  TransmitViewController.swift
//  BeaconAppTest2
//
//  Created by Flavia Arsuffi on 10/05/20.
//  Copyright © 2020 Flavia Arsuffi. All rights reserved.
//

import UIKit
import CoreLocation
import CoreBluetooth

class TransmitViewController: UIViewController, CBPeripheralManagerDelegate {
    
    @IBOutlet weak var uuidLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var minorLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    
    var beaconRegion: CLBeaconRegion!
    var beaconPeripheralData: NSDictionary!
    var peripheralManager: CBPeripheralManager!
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func transmitButtonTapped(_ sender: UIButton) {
               beaconPeripheralData = beaconRegion .peripheralData(withMeasuredPower: nil)
            peripheralManager = CBPeripheralManager.init(delegate: self, queue: nil)
    }
    
   func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        if (peripheral.state == .poweredOn) {
            peripheralManager .startAdvertising(beaconPeripheralData as? [String : Any])
            print("Powered On")
        } else {
            peripheralManager .stopAdvertising()
            print("Not Powered On, or some other error")
        }
    }
    
    
}
