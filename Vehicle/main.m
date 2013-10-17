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
        
        int capacity, begin, end;
        NSString* plate;
        char plateP[10] = {0};
        printf("Bitte Geben Sie die gewuenschten Kennzeichenbeschriftung an: ");
        scanf("%s", plateP);
        plate = [[NSString alloc] initWithUTF8String: plateP];
        printf("Bitte geben Sie den Hubraum Ihres Fahrzeuges an: ");
        scanf("%d", &capacity);
        printf("Bitte geben Sie den Startmonat der Saison an: ");
        scanf("%d", &begin);
        printf("Bitte geben Sie den Endmonat der Saison an: ");
        scanf("%d", &end);
        
        Vehicle* sv = [[SeasonalVehicle alloc] initWithCapacity:capacity AndPlate:plate AndSeasonBegin:begin AndSeasonEnd:end];
        printf("Ihre monatlichen Steuern betragen %d Euro.", [sv tax]);
        
    }
    return 0;
}

