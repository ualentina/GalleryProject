//
//  InfoViewController.h
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface InfoViewController : UIViewController <MKMapViewDelegate>

@property(nonatomic,retain) IBOutlet MKMapView *map;
@property(nonatomic,retain) CLGeocoder *geocoder;
- (void)geocodeUserLocation:(CLLocation*)location;
@end
