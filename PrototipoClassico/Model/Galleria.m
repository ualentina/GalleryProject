//
//  Galleria.m
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "Galleria.h"

@implementation Galleria
@synthesize  nome, indirizzo, citta, cap, telefono,cellulare, sitoweb, fax, imgLogo;

-(void) setNome:(NSString *)newValue{
    nome=[newValue copy];
}
-(void) setIndirizzo:(NSString *)newValue{
    indirizzo=[newValue copy];
}

-(void) setCitta:(NSString *)newValue{
    citta=[newValue copy];
}
-(void) setCap:(NSString *)newValue{
    cap=[newValue copy];
}
-(void) setTelefono:(NSString *)newValue{
    telefono=[newValue copy];
}
-(void) setCellulare:(NSString *)newValue{
    cellulare=[newValue copy];
}
-(void) setSitoweb:(NSString *)newValue{
    sitoweb=[newValue copy];
}
-(void) setFax:(NSString *)newValue{
    fax=[newValue copy];
}
-(void) setImgLogo:(NSString *)newValue{
    imgLogo=[newValue copy];
}
-(id) init{
    
    nome=@"iGallery";
    indirizzo=@"Via delle rose 23";
    citta=@"TS";
    cap=@"34100";
    telefono=@"040403340";
    cellulare=@"3394538002";
    sitoweb=@"http://www.mtv.com";
    fax=@"0402333009";
    imgLogo=@"";
    return self;
}

-(void) dealloc{
    
    /* NB: non utilizzare il riferimento a self.nome
     https://developer.apple.com/library/ios/#documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmRules.html
     
     */
    
    [nome release];
    [indirizzo release];
    [citta release];
    [cap release];
    [telefono release];
    [cellulare release];
    [sitoweb release];
    [fax release];
    [imgLogo release];
    
    
        //per ultimo invoca dealloc della superclasse
    [super dealloc];
}
@end
