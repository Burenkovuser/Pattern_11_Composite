//
//  LeafObject.h
//  Composite
//
//  Created by Vasilii on 15.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeObjectProtocol.h"

@interface LeafObject : NSObject <CompositeObjectProtocol>

@property (nonatomic, strong) NSString *leafValue;

@end

/*
 наш объект не может добавлять себе детей (ну он же не контейнер:) ), и может возвращать свое значение с помощью метода getData.
*/
