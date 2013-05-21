//
//  DALLayer.m
//  GalleryProject
//
//  Created by Valentina on 21/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "DALLayer.h"

@implementation DALLayer
- (id) init{
        [super init];
//        NSXMLParser *xml=[[NSXMLParser alloc] init];
//        self.xmlParser=xml;
//        [xml release];
    return self;
    
}
- (void) apriFileXMLda:(NSString *) percorsoFile tipoDiRisorsa:(enum TIPO_DATASOURCE) tipo conData:(NSData *) dati{
    
        //apro file locale-> plist o xml
        //apro file dal web->xml
        //mi connetto a un db->db
        //mi connetto a un oggetto quale NSDictionary->oggetto
    
   if(tipo==rete)
   {
           //leggo il percorso online dai settings
       NSURL *url = [NSURL URLWithString:percorsoFile];
       self.xmlParser =[[NSXMLParser alloc] initWithContentsOfURL:url];
   }
    
    if(tipo==locale)
    {
            //leggo il percorso dal main bundle
        NSString *xmlFileLocale=[[NSBundle mainBundle] pathForResource:percorsoFile ofType:@"xml"];
        NSURL *url = [NSURL URLWithString:xmlFileLocale];
       self.xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
        
    }
    
    if(tipo==db)
    {
            //leggo il percorso dal database
            //  NSString *xmlFileLocale=[[NSBundle mainBundle] pathForResource:percorsoFile ofType:@"xml"];
        
        
    }

    if(tipo==oggetto)
    {
        //leggo il percorso dal main bundle
        NSData *xmlData=[NSData dataWithData:dati];
        self.xmlParser = [[NSXMLParser alloc] initWithData:dati];
          
    }


}


@end
