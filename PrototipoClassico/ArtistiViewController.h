//
//  ArtistiViewController.h
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StringUtilities/StringUtilities.h>
#import "Constants.h"

@interface ArtistiViewController : UITableViewController
/*
@property (nonatomic,retain) NSMutableArray *keys;
@property (nonatomic,retain) NSMutableDictionary *data;
@property (nonatomic,retain) IBOutlet UIBarButtonItem * home;
*/
    //aggiunta una lista per elenco artisti
@property (nonatomic,retain) NSArray *lista;
@property (nonatomic,retain) NSArray *artisti;
@property (nonatomic,retain) NSString *currentString;
@property (nonatomic,retain) NSString *currentElementName;

@property (nonatomic,retain) IBOutlet UITableView *tableArtisti;
-(IBAction) goHome:(id)sender;
-(BOOL)startParsing;
-(BOOL) caricaFileXML;
@end
