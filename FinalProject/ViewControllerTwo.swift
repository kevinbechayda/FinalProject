//
//  ViewControllerTwo.swift
//  FinalProject
//
//  Created by Kevin Bechayda on 4/11/18.
//  Copyright © 2018 Kevin Bechayda. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerTwo: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    //set initial location
    let initialLocation = CLLocation (latitude: 21.338355 , longitude: -158.079697)
    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 400
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Maps"

        centerMapOnLocation(location: initialLocation)
        
        //create a Restaurant object and set all the arguments of the three parameters
        let restaurantOne = Restaurant(title: "Julie'Z", type: "Filipino", coordinate: CLLocationCoordinate2D(latitude: 21.337723, longitude: -158.080431))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Ono Steak and Shrimp", type: "Local", coordinate: CLLocationCoordinate2D(latitude: 21.337681, longitude: -158.081138))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Koa Pancake House", type: "Breakfast", coordinate: CLLocationCoordinate2D(latitude: 21.338099, longitude: -158.080729))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339807, longitude: -158.078217))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Taco Bell", type: "Fast Food", coordinate: CLLocationCoordinate2D(latitude: 21.338783, longitude: -158.078469))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "L&L Hawaiian Barbecue", type: "Local", coordinate: CLLocationCoordinate2D(latitude: 21.339533, longitude: -158.078858))
        mapView.addAnnotation(restaurantSix)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
