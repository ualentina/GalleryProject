//
//  InfoViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.map.showsUserLocation = YES;
    [self geocodeUserLocation:self.map.userLocation.location];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)geocodeUserLocation:(CLLocation*)location
{
    if (!self.geocoder)
        self.geocoder = [[CLGeocoder alloc] init];
    
    [self.geocoder reverseGeocodeLocation:location completionHandler:
     ^(NSArray* placemarks, NSError* error){
         if ([placemarks count] > 0)
         {
             CLPlacemark *placemark = [placemarks objectAtIndex:0];
             
             NSString *streetAddress = (placemark.thoroughfare != nil)?placemark.thoroughfare:@"";
             NSString *city = (placemark.locality != nil)?placemark.locality:@"";
             NSString *zipCode = (placemark.postalCode != nil)?placemark.postalCode:@"";
             NSString *countryCode = (placemark.country != nil)?placemark.country:@"";
             NSString *text = [[NSString alloc] initWithFormat:@"%@ %@ %@ %@",
                               streetAddress,
                               city,
                               zipCode,
                               countryCode
                               ];
             
            // userLabel.text = text;
         }
     }];
}
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    

}


@end
