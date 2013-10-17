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

    if (!(self=[super initWithCapacity:capacity AndPlate:plate]))
        return nil;
    
    self.saisonBeginn = begin;
    self.saisonEnde = end<begin?begin:end;
    
    return self;

}

- (int) tax {

    int superCapacity = [super capacity];
    int dauerZulassung = self.saisonEnde - self.saisonBeginn;
//    NSLog(@"Ende: %d", self.saisonEnde);
//    NSLog(@"Beginn: %d", self.saisonBeginn);
//    NSLog(@"Dauer: %d", dauerZulassung);
    return ((int) (superCapacity / 200)) * 12 * dauerZulassung;

}

@end
