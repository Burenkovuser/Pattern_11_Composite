//
//  Container.m
//  Composite
//
//  Created by Vasilii on 15.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Container.h"

@implementation Container

-(NSMutableArray *) components
{
    if (_components == nil)
        _components = [[NSMutableArray alloc] init];
    return _components;
}

-(void) addComponent:(id<CompositeObjectProtocol>)aComponent
{
    [self.components addObject:aComponent];
}

-(NSString *) getData
{
    NSMutableString *valueToReturn = [[NSMutableString alloc] init]; [valueToReturn appendString:@"<ContainerValues>"];
    for ( id<CompositeObjectProtocol> object in _components)
    {
        [valueToReturn appendString:[object getData]];
    }
    [valueToReturn appendString:@"</ContainerValues>"];
    
    return valueToReturn;
}

@end

/* наш контейнер может добавлять в себя детей, которые могут быть как типа Container так и типа LeafObject. Метод getData же, бегает по всем объектам в массиве components, и вызывает тот же самый метод в детях.
*/
