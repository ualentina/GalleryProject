//
//  HomeViewController.h
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <UIKit/UIKit.h>
//per le costanti, vedi qui http://stackoverflow.com/questions/538996/constants-in-objective-c
#import "Constants.h"

@interface HomeViewController : UIViewController
@property (nonatomic, retain) IBOutlet  UIButton *btnVediArtisti;
@property (nonatomic, retain) IBOutlet  UIButton *btnVediOpere;
@property (nonatomic, retain) IBOutlet  UIButton *btnVediInfo;
@property (nonatomic, retain)IBOutlet UITabBarController *tabBarController;

-(IBAction)vediArtisti:(id)sender; 
-(IBAction)vediOpere:(id)sender;
-(IBAction)vediEsposizioni:(id)sender;
-(IBAction)vediEsposizioneCorrente:(id)sender;
-(IBAction)vediInfo:(id)sender;

//per test
//-(IBAction)loadTabBar:(id)sender;
@end
