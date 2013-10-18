//
//  SeasonalVehicle.h
//  Vehicle
//
//  Created by cianorob on 17.10.13.
//  Copyright (c) 2013 cianorob. All rights reserved.
//

#import "Vehicle.h"

@interface SeasonalVehicle : Vehicle

@property int saisonBeginn;
@property int saisonEnde;

- (id) initWithCapacity:(int)capacity AndPlate:(NSString *)plate AndSeasonBegin: (int)begin AndSeasonEnd: (int)end;

@end
