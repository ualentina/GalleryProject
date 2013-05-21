//
//  HomeViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//
/* GESTIRE LA NAVIGAZIONE CON TABBAR
 http://stackoverflow.com/questions/576764/tab-bar-controller-inside-a-navigation-controller-or-sharing-a-navigation-root
 
 http://stackoverflow.com/questions/2339177/having-a-uitabbar-and-a-uinavigationcontroller-in-an-app
 
 
 IN ALTERNATIVA, PROVARE QUESTO
 http://www.alexmedearis.com/uitabbarcontroller-inside-a-uinavigationcontroller/
 
 */
#import "HomeViewController.h"
#import "ArtistiViewController.h"
#import "OpereViewController.h"
#import "InfoViewController.h"
#import "EsposizioniViewController.h"

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

/*
  
 
 
 */
-(void) setupTabBar{
    
    ArtistiViewController *listaArtisti=[[ArtistiViewController alloc] initWithNibName:@"ArtistiViewController" bundle:nil];
    
    OpereViewController *listaOpere=[[OpereViewController alloc] initWithNibName:@"OpereViewController" bundle:nil];
    
    EsposizioniViewController *listaEsposizioni=[[EsposizioniViewController alloc] initWithNibName:@"EsposizioniViewController" bundle:nil];
    
    InfoViewController *info=[[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"Artisti" image:nil tag:1];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"Opere" image:nil tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"Esposizioni" image:nil tag:3];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"Info" image:nil tag:4];
    
    listaArtisti.tabBarItem = item1;
    listaOpere.tabBarItem = item2;
    listaEsposizioni.tabBarItem = item3;
    info.tabBarItem=item4;
    
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:listaArtisti,listaOpere,listaEsposizioni,info, nil];
    
    [item1 release];
    [item2 release];
    [item3 release];
    [item4 release];
    
    
    [listaArtisti release];
    [listaOpere release];
    [listaEsposizioni release];
    [info release];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupTabBar];
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//http://stackoverflow.com/questions/2319326/iphone-tabbarcontroller-set-selected-tab-programmatically
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
    [self.navigationController pushViewController:self.tabBarController animated:YES];
     self.tabBarController.selectedIndex=0;
    
    
//    [self.navigationController pushViewController:[self.tabBarController.viewControllers objectAtIndex:0] animated:NO];
   
}
/*
-(IBAction)loadTabBar:(id)sender
{
     //per test
     [self.navigationController pushViewController:self.tabBarController animated:YES];
    
    
     }
 */
-(IBAction)vediOpere:(id)sender
{
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=1;
    
}
-(IBAction)vediEsposizioni:(id)sender{
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=2;
    
}
-(IBAction)vediInfo:(id)sender
{
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=3;
}

-(IBAction)vediEsposizioneCorrente:(id)sender{
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=2;
    
}


@end
