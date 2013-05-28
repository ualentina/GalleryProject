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
@property (nonatomic,copy,readonly) NSString* id_artista; //pkey
@property (nonatomic,copy) NSString* nome;
@property (nonatomic,copy) NSString* cognome;
@property (nonatomic,copy) NSString* pathImmagine;
@property (nonatomic,retain) NSDate* dataNascita;
@property (nonatomic,retain) NSDate* dataMorte;
@property (nonatomic,copy) NSString* bio;
@property (nonatomic,retain) NSMutableArray* listaOpere;
    //aggiungere un NSMutableArray di oggetti Opera
    //initializers
-(id) init;
-(id) initWithId:(NSString *)idArtista withNome:(NSString *) nome
           withCognome:(NSString *) cognome
           withImg:(NSString *) img
           withNascita:(NSDate *) dataNascita
           withMorte:(NSDate *) dataMorte
           withBio:(NSString *) bio
           withListaOpere:(NSMutableArray *) opere;
    //ottengo elenco delle opere associate all'artista per mezzo di id_artista
    //-(NSMutableArray*) getOperePerId:(NSString*) idArtista;
@end
