//
//  HomeViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
// LEGENDA: VC = VIEW CONTROLLER
//
/* GESTIRE LA NAVIGAZIONE CON TABBAR
 http://stackoverflow.com/questions/576764/tab-bar-controller-inside-a-navigation-controller-or-sharing-a-navigation-root
 
 http://stackoverflow.com/questions/2339177/having-a-uitabbar-and-a-uinavigationcontroller-in-an-app
 
 
 IN ALTERNATIVA, PROVATO QUESTO, HOME MODALE... MA VIENE VISUALIZZATO SOLO IL TAB BAR
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
  creo dinamicamente il UITabBarController, aggiungo i seguenti controllers :
 -listaArtisti
 -listaOpere
 -listaEsposizioni
 -info
 
 AGGIUNGERE QUI ULTERIORI CONTROLLERS! NB: NEL CASO L'ORDINE VENISSE MODIFICATO, AGGIORNARE GLI INDICI DEI UITABBARITEM
 
 
 */
-(void) setupTabBar{
    
    ArtistiViewController *listaArtisti=[[ArtistiViewController alloc] initWithNibName:VC_ARTISTI bundle:nil];
    
    OpereViewController *listaOpere=[[OpereViewController alloc] initWithNibName:VC_OPERE bundle:nil];
    
    EsposizioniViewController *listaEsposizioni=[[EsposizioniViewController alloc] initWithNibName:VC_ESPOSIZIONI bundle:nil];
    
    InfoViewController *info=[[InfoViewController alloc] initWithNibName:VC_INFO bundle:nil];
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:TAB_ARTISTI image:nil tag:1];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:TAB_OPERE image:nil tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:TAB_ESPOSIZIONI image:nil tag:3];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:TAB_INFO image:nil tag:4];
    
    /*ATTENZIONE AGLI INDICI */
    listaArtisti.tabBarItem = item1;
    listaOpere.tabBarItem = item2;
    listaEsposizioni.tabBarItem = item3;
    info.tabBarItem=item4;
    
    //ASSEGNO QUESTI CONTROLLERS ALLA PROPRIETA' VIEWCONTROLLERS DEL TABBAR
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:listaArtisti,listaOpere,listaEsposizioni,info, nil];
    
    //faccio pulizia
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
    // Do any additional setup after loading the view from its nib. vedi sopra
    [self setupTabBar];
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/* 
 AL TAP SUL SINGOLO UIBUTTON, CARICO IL TABBARCONTROLLER E IMPOSTO IL TAB SELEZONATO IN BASE AL SUO INDICE
 FONTE: http://stackoverflow.com/questions/2319326/iphone-tabbarcontroller-set-selected-tab-programmatically
 */

/*  per il momento, ciascun UIButton è collegato a una azione diversa*/
-(IBAction)vediArtisti:(id)sender

{
     [self setupTabBar];
    [self.navigationController pushViewController:self.tabBarController animated:YES];
     self.tabBarController.selectedIndex=0;
   
}


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

/*NB: da vedere come gestire...al tap su questo button si accede al dettaglio della mostra attuale in corso quindi al VC di dettaglio delle esposizioni */
-(IBAction)vediEsposizioneCorrente:(id)sender{
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=2;
    
}
/****************************************************
 in alternativa: da IB imposta i tag dei UIButton da 1 a 5 e decommenta il codice sotto:
 FONTE: http://stackoverflow.com/questions/5858247/ios-one-ibaction-for-multiple-buttons
 */

/*
 -(IBAction)vediViewControllerSelezionato:(id)sender {
 
 NSLog(@"Button Tag is : %i",[sender tag]);
 
 switch ([sender tag]) {
 case 0:
    
    break;
 case 1:
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=1;
    break;
 case 2:
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=2;
    break;
 case 3:
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=3;
    break;
 case 4:
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=4;
    break;
 case 5:
    [self.navigationController pushViewController:self.tabBarController animated:YES];
    self.tabBarController.selectedIndex=5;
    break;
 default:
    NSLog(@"Default Message here");
    break;
 }
 
 */

@end
