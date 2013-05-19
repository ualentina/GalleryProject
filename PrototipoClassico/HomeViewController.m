//
//  HomeViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "HomeViewController.h"
#import "ArtistiViewController.h"
#import "OpereViewController.h"
#import "InfoViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)vediArtisti:(id)sender

{
    /* per test
    self.tabBarController = [[UITabBarController alloc] init];
    ArtistiViewController *listaArtisti=[[ArtistiViewController alloc] initWithNibName:@"ArtistiViewController" bundle:nil];
    OpereViewController *listaOpere=[[OpereViewController alloc] initWithNibName:@"OpereViewController" bundle:nil];
   // MyOtherViewController* vc2 = [[MyOtherViewController alloc] init];
    
    NSArray* controllers = [NSArray arrayWithObjects:listaArtisti,listaOpere, nil];
    self.tabBarController.viewControllers = controllers;
    
    [self presentModalViewController:self.tabBarController animated:YES];
     
    [self presentViewController:listaArtisti animated:YES completion:NULL];
    
     
        
    [self presentModalViewController:listaArtisti animated:YES];
    [listaArtisti release];
      */
}
-(IBAction)loadTabBar:(id)sender
{
    /* per test
    ArtistiViewController *listaArtisti=[[ArtistiViewController alloc] initWithNibName:@"ArtistiViewController" bundle:nil];
    OpereViewController *listaOpere=[[OpereViewController alloc] initWithNibName:@"OpereViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:listaArtisti,listaOpere, nil];
    [self.navigationController pushViewController:self.tabBarController animated:YES];

     */
     }
-(IBAction)vediOpere:(id)sender
{
    
}
-(IBAction)vediInfo:(id)sender
{
    
}

@end
