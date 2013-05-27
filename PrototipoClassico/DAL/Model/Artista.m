//
//  Artista.m
//  GalleryProject
//
//  Created by Valentina on 27/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "Artista.h"

@implementation Artista
    @synthesize nome, cognome, pathImmagine, dataNascita, dataMorte,bio;

    //benchè mi serva della sintesi, posso cmq scrivere il mio setter
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
-(id) initWithNome:(NSString *) name withCognome:(NSString *) surname withImg:(NSString *) immagine
       withNascita:(NSDate *) dateBirth withMorte:(NSDate *) dateDeath withBio:(NSString *) biography
{
    
    if (self=[super init])
    {
        nome=name;
        cognome=surname;
        pathImmagine=immagine;
        dataNascita=dateBirth;
        dataMorte=dateDeath;
        bio=biography;
        
    }
    return self;
}

-(id) init{
    nome=@"";
    cognome=@"";
    pathImmagine=@"";
    dataNascita=nil;
    dataMorte=nil;
    bio=@"";
    return self;
    
}
-(void) dealloc{
    
    /* NB: non utilizzare il riferimento a self.nome 
     https://developer.apple.com/library/ios/#documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmRules.html
     
     */
    [nome release];
    [cognome release];
    [pathImmagine release];
    [dataNascita release];
    [dataMorte release];
    [bio release];
 
        //per ultimo invoca dealloc della superclasse
    [super dealloc];
}
@end
