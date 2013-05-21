//
//  DALLayer.h
//  GalleryProject
//
//  Created by Valentina on 21/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>


enum TIPO_DATASOURCE {none, locale, rete, db, oggetto};

@interface DALLayer : NSObject


@property (retain, nonatomic) NSXMLParser *xmlParser;

- (id) init;
- (void) apriFileXMLda:(NSString *) percorsoFile tipoDiRisorsa:(enum TIPO_DATASOURCE) tipo conData:(NSData *) dati;
@end

