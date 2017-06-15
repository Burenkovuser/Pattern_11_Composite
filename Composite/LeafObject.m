//
//  LeafObject.m
//  Composite
//
//  Created by Vasilii on 15.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "LeafObject.h"


@implementation LeafObject

-(NSString *) getData
{
    return [[NSString alloc] initWithFormat:@"<%@/>",self.leafValue];
}

-(void) addComponent:(id)aComponent
{
    NSLog(@"Can't add component. Sorry, man");
}

@end
