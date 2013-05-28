//
//  Galleria.h
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>
  
@interface Galleria : NSObject

@property (nonatomic,copy) NSString* nome; //la mia galleria
@property (nonatomic,copy) NSString* indirizzo; //via delle rose 23
@property (nonatomic,copy) NSString* citta; //TS
@property (nonatomic,copy) NSString* cap; //34200
@property (nonatomic,copy) NSString* telefono;
@property (nonatomic,copy) NSString* cellulare;
@property (nonatomic,copy) NSString* sitoweb;
@property (nonatomic,copy) NSString* fax;
@property (nonatomic,copy) NSString* imgLogo;

-(id) init;

@end
