//
//  Vehicle.h
//  Vehicle
//
//  Created by Mac on 14.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property int hubraum;
@property NSString* kennzeichen;

-(id)initWith:(int)aCapacity and: (NSString* )aPlate;

-(int)capacity;

-(NSString* )plate;

-(double)tax;

@end
