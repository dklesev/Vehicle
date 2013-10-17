//
//  SeasonalVehicle.m
//  Vehicle
//
//  Created by cianorob on 17.10.13.
//  Copyright (c) 2013 cianorob. All rights reserved.
//

#import "SeasonalVehicle.h"

@implementation SeasonalVehicle

- (id) initWithCapacity:(int)capacity AndPlate:(NSString *)plate AndSeasonBegin:(int)begin AndSeasonEnd:(int)end {

    if ((self=[super initWithCapacity:capacity AndPlate:plate])==nil) return nil;
    
    self.saisonBeginn = begin;
    self.saisonEnde = end>begin?begin:end;
    
    return self;

}

- (int) tax {

    return ((int) super.capacity / 200) * 12;

}

@end
