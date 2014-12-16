//
//  ViewController03.swift
//  NewCode
//
//  Created by Michael Vilabrera on 12/16/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit
import MapKit

class ViewController03: UIViewController, MKMapViewDelegate {
    
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var mapView = MKMapView()
        
        mapView.mapType = .Standard
        mapView.frame = view.frame
        mapView.delegate = self
        view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
