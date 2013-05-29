//
//  Opera.m
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "Opera.h"

@implementation Opera
@synthesize id_opera, id_artista,id_esposizione, titolo, pathSmallImmagine, pathBigImmagine, dataCreazione;

-(void) setTitolo:(NSString *)newValue{
    titolo=[newValue copy];
}
-(void) setPathSmallImmagine:(NSString *)newValue{
    pathSmallImmagine=[newValue copy];
}
-(void) setPathBigImmagine:(NSString *)newValue{
    pathBigImmagine=[newValue copy];
}


-(id) init{
    
    id_opera=@"-1";
    id_artista=nil;
    id_esposizione=nil;
    titolo=@"";
    pathSmallImmagine=@"";
    pathBigImmagine=nil;
    dataCreazione=nil;
   
    return self;
    
}

-(id) initWithId:(NSString*) idOpera withArtista:(Artista *) a withEsposizione:(Esposizione*) esp withTitolo:(NSString *) title withSmallImg:(NSString *) smallImg withBigImg:(NSString *) bigImg withDataCreazione:(NSDate *) dtCreazione
{
     if (self=[super init])
    {
        id_opera=idOpera;
        id_artista=[a copy]; //?
        id_esposizione=[esp copy];
        titolo=title;
        pathSmallImmagine=smallImg;
        pathBigImmagine=bigImg;
        dataCreazione=dtCreazione;
        [a release]; //?
        [esp release];
        a=nil;
        esp=nil;
      
       
        
    }
    
    return self;
}
/*
-(NSMutableArray*) getOperePerId:(NSString*) idArtista{
    
    NSMutableArray* temp=[[NSMutableArray alloc] init];
        //leggo il file delle opere
        //estraggo titolo, dati ecc dove idArtista == id artista passato
        //e passo questo array all'oggetto Artista
    return temp;
}
 */
-(void) dealloc{
    
  
    [id_opera release];
    [id_artista release];
    id_artista=nil;
    [id_esposizione release];
    id_esposizione=nil;
    [titolo release];
    [pathSmallImmagine release];
    [pathBigImmagine release];
    [dataCreazione release];
   
    
        //per ultimo invoca dealloc della superclasse
    [super dealloc];
}
@end
