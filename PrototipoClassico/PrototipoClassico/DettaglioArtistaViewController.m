//
//  DettaglioArtistaViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 12/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "DettaglioArtistaViewController.h"
#import "DettaglioOperaViewController.h"
@interface DettaglioArtistaViewController ()

@end




@implementation DettaglioArtistaViewController

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
-(IBAction)vediOpereArtista:(id)sender{
    DettaglioOperaViewController *detailOpera=[[DettaglioOperaViewController alloc] initWithNibName:@"DettaglioOperaViewController" bundle:nil];
    [self.navigationController pushViewController:detailOpera animated:YES];
    [detailOpera release];
}
@end
