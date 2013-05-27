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
@end
