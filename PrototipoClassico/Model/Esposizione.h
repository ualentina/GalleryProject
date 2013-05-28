//
//  Esposizione.h
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Esposizione : NSObject
@property (nonatomic,copy,readonly) NSString* id_esposizione;
@property (nonatomic,copy) NSString* titolo;
@property (nonatomic,retain) NSDate* dataInizio;
@property (nonatomic,retain) NSDate* dataTermine;
@property (nonatomic,retain) NSMutableArray* listaOpere;
-(id) init;
-(id) initWithId:(NSString *) idEsposizione
      withTitolo:(NSString *) title
      withInizio:(NSDate *) dtInizio
      withFine:(NSDate *) dtTermine
      withListaOpere:(NSMutableArray *) opere;
@end
