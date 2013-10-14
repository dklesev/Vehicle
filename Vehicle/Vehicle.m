	//
//  Vehicle.m
//  Vehicle
//
//  Created by Mac on 14.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(id)vehicleWith:(int)aCapacity and: (NSString* )aPlate{
    Vehicle* vehicle = [[Vehicle alloc] init];
    [vehicle setHubraum: aCapacity];
    [vehicle setKennzeichen: aPlate];
    return vehicle;
}

-(int)capacity{
    return _hubraum;
}

-(NSString* )plate{
    return _kennzeichen;
}

-(double)tax{
    double tax = _hubraum / 100;
    double rest = ((double)(_hubraum % 100)*5)/100;
    return (tax * 5)+rest;
}

@end
