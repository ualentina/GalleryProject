//
//  Artista.m
//  GalleryProject
//
//  Created by Valentina on 27/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "Artista.h"

@implementation Artista
    @synthesize id_artista, nome, cognome, pathImmagine, dataNascita, dataMorte,bio, listaOpere;

    //benchè mi serva della sintesi, posso cmq scrivere il mio setter
/*-(void) setId_artista:(NSString *)newValue{
    id_artista=[newValue copy];
}
 */
-(void) setNome:(NSString *)newValue{
    nome=[newValue copy];
}
-(void) setCognome:(NSString *)newValue{
    cognome=[newValue copy];
}
-(void) setPathImmagine:(NSString *)newValue{
    pathImmagine=[newValue copy];
}
-(void) setBio:(NSString *)newValue{
    bio=[newValue copy];
}

-(id) init{
    id_artista=@"-1";
    nome=@"";
    cognome=@"";
    pathImmagine=@"";
    dataNascita=nil;
    dataMorte=nil;
    bio=@"";
    listaOpere=nil;
    return self;
    
}

-(id) initWithId:(NSString *)idArtista withNome:(NSString *) name withCognome:(NSString *) surname withImg:(NSString *) immagine
       withNascita:(NSDate *) dateBirth withMorte:(NSDate *) dateDeath withBio:(NSString *) biography
        withListaOpere:(NSMutableArray *)elencoOpere
{
    
    if (self=[super init])
    {
        id_artista=idArtista;
        nome=name;
        cognome=surname;
        pathImmagine=immagine;
        dataNascita=dateBirth;
        dataMorte=dateDeath;
        bio=biography;
        listaOpere=elencoOpere;
        
    }
    return self;
}

-(void) dealloc{
    
    /* NB: non utilizzare il riferimento a self.nome 
     https://developer.apple.com/library/ios/#documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmRules.html
     
     */
    [id_artista release];
    [nome release];
    [cognome release];
    [pathImmagine release];
    [dataNascita release];
    [dataMorte release];
    [bio release];
    [listaOpere release];
    listaOpere=nil;
 
        //per ultimo invoca dealloc della superclasse
    [super dealloc];
}
@end
