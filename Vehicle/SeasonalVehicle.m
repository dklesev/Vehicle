//
//  SeasonalVehicle.m
//  Vehicle
//
//  Created by Mac on 14.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "SeasonalVehicle.h"

@implementation SeasonalVehicle

-(id)vehicleWith:(int)aCapacity and: (NSString *)aPlate from:(NSString *)beginn and: (NSString *)ende{
    SeasonalVehicle *vehicle = [[SeasonalVehicle alloc] init];
    [vehicle setHubraum: aCapacity];
    [vehicle setKennzeichen: aPlate];
    [vehicle setBeginn:beginn];
    [vehicle setEnde:ende];
    return vehicle;
}

-(NSString* )validTill{
    return [NSString stringWithFormat:@"Gültig zwischen: %@ - %@", self.beginn, self.ende];
}

-(double)limitedTax{
    double tax = [super tax];
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setValue:[NSNumber numberWithInt:1] forKey:@"Januar"];
    [dictionary setValue:[NSNumber numberWithInt:2] forKey:@"Februar"];
    [dictionary setValue:[NSNumber numberWithInt:3] forKey:@"März"];
    [dictionary setValue:[NSNumber numberWithInt:4] forKey:@"April"];
    [dictionary setValue:[NSNumber numberWithInt:5] forKey:@"Mai"];
    [dictionary setValue:[NSNumber numberWithInt:6] forKey:@"Juni"];
    [dictionary setValue:[NSNumber numberWithInt:7] forKey:@"Juli"];
    [dictionary setValue:[NSNumber numberWithInt:8] forKey:@"August"];
    [dictionary setValue:[NSNumber numberWithInt:9] forKey:@"September"];
    [dictionary setValue:[NSNumber numberWithInt:10] forKey:@"Oktober"];
    [dictionary setValue:[NSNumber numberWithInt:11] forKey:@"November"];
    [dictionary setValue:[NSNumber numberWithInt:12] forKey:@"Dezember"];
    
    int dauer = [[dictionary objectForKey:self.ende] intValue] - [[dictionary objectForKey:self.beginn] intValue]+1;
    
    return (double)tax/12 * dauer;
}

@end
