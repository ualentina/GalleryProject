//
//  Artista.h
//  GalleryProject
//
//  Created by Valentina on 27/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Artista : NSObject
    //default readwrite
@property (nonatomic,copy) NSString* nome;
@property (nonatomic,copy) NSString* cognome;
@property (nonatomic,copy) NSString* pathImmagine;
@property (nonatomic,retain) NSDate* dataNascita;
@property (nonatomic,retain) NSDate* dataMorte;
@property (nonatomic,copy) NSString* bio;
    //aggiungere un NSMutableArray di oggetti Opera
@end
