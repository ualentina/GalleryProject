//
//  Opera.h
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Artista,Esposizione;
@interface Opera : NSObject
@property (nonatomic,copy,readonly) NSString* id_opera;//pkey
                                                       //@property (nonatomic,copy,readonly) NSString* id_artista; //? id artista come stringa
@property (nonatomic,assign) Artista* id_artista;           // o puntatore a un oggetto Artista?
@property (nonatomic,retain) Esposizione* id_esposizione;  //come sopra, un riferimento a Esposizione
@property (nonatomic,copy) NSString* titolo;
@property (nonatomic,copy) NSString* pathSmallImmagine;
@property (nonatomic,copy) NSString* pathBigImmagine;
@property (nonatomic,retain) NSDate* dataCreazione;

    //aggiungere un NSMutableArray di oggetti Opera
    //initializers
-(id) init;
-(id) initWithId:(NSString*) idOpera withArtista:(Artista *) a
      withEsposizione:(Esposizione*) esp
      withTitolo:(NSString *) title
      withSmallImg:(NSString *) smallImg
      withBigImg:(NSString *) bigImg
      withDataCreazione:(NSDate *) dtCreazione;
    //-(NSMutableArray*) getOperePerId:(NSString*) idArtista;
@end
