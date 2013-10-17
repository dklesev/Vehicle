//
//  main.m
//  Vehicle
//
//  Created by cianorob on 17.10.13.
//  Copyright (c) 2013 cianorob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SeasonalVehicle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        SeasonalVehicle* sv = [[SeasonalVehicle alloc] initWithCapacity:200 AndPlate:@"Hallo" AndSeasonBegin:5 AndSeasonEnd:6];
        printf("%d", [sv tax]);
        
    }
    return 0;
}

