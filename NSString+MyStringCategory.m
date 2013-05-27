//
//  NSString+MyStringCategory.m
//  GalleryProject
//
//  Created by Valentina on 27/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "NSString+MyStringCategory.h"

@implementation NSString (MyStringCategory)
+ (NSString*) concat:(NSString*) stringaDaConcatenare {
        // Composizione della stringa concatenata:
        //NSString *risultato = [NSString stringWithFormat:@"%@ %@", firstString, secondString];
    return [self stringByAppendingString:stringaDaConcatenare];
   
}
@end
