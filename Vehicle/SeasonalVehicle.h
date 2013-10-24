//
//  SeasonalVehicle.h
//  Vehicle
//
//  Created by Mac on 14.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "Vehicle.h"

@interface SeasonalVehicle : Vehicle

@property NSString* beginn;
@property NSString* ende;

-(id)initWith:(int)aCapacity and: (NSString *)aPlate from:(NSString *)beginn and: (NSString *)ende;

-(NSString* )validTill;

-(double)limitedTax;

@end
