//
//  Esposizione.m
//  GalleryProject
//
//  Created by Valentina on 28/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "Esposizione.h"

@implementation Esposizione

@synthesize id_esposizione, titolo, dataInizio, dataTermine,listaOpere;

-(id) init{
    id_esposizione=@"-1";
    titolo=@"";
    dataInizio=nil;
    dataTermine=nil;
    listaOpere=nil;
    
    return self;
}
-(id) initWithId:(NSString *) idEsposizione
      withTitolo:(NSString *) title
      withInizio:(NSDate *) dtInizio
        withFine:(NSDate *) dtTermine
        withListaOpere:(NSMutableArray *) opere
{
    
    
    if (self=[super init])
    {
        id_esposizione=idEsposizione;
        titolo=title;
        dataInizio=dtInizio;
        dataTermine=dtTermine;
        listaOpere=opere;
      }
    
    return self;
    
}
-(void) dealloc{
    
    [id_esposizione release];
    [titolo release];
    [dataInizio release];
    [dataTermine release];
    [listaOpere release];
    listaOpere=nil;
    
    [super dealloc];
}

@end
