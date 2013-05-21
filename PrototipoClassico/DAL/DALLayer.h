//
//  DALLayer.h
//  GalleryProject
//
//  Created by Valentina on 21/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DALLayer : NSObject
enum TIPO_DATASOURCE {locale, rete, db, oggetto};

@property (retain, nonatomic) NSXMLParser *xmlParser;
-(void) apriFileXMLda:(NSString *) percorsoFile;
@end

