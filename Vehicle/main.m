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
        
        //Temporaere Variablen fuer die Nutzereingabe
        int capacity, begin, end;
        NSString* plate;
        char plateP[10] = {0};
        
        //Lese Nutzereingaben ein und weise sie den temporaeren Variablen zu
        printf("Bitte geben Sie den Hubraum Ihres Fahrzeuges an: ");
        scanf("%d", &capacity);
        
        printf("Bitte geben Sie den Startmonat der Saison an: ");
        scanf("%d", &begin);
        
        printf("Bitte geben Sie den Endmonat der Saison an: ");
        scanf("%d", &end);
        
        //Spezialfall NSString: Zuerst in ein char[] lesen, dann ein NSString
        //aus dem char[] erstellen
        printf("Bitte Geben Sie die gewuenschten Kennzeichenbeschriftung an: ");
        scanf("%s", plateP);
        plate = [[NSString alloc] initWithUTF8String: plateP];
        
        //Lege neues Objekt mit statischem Typ Vehicle und dynamischen Typ SeasonVehicle an
        //=> Weise Polymorphie nach
        Vehicle* sv = [[SeasonalVehicle alloc] initWithCapacity:capacity AndPlate:plate AndSeasonBegin:begin AndSeasonEnd:end];
        
        printf("Ihre monatlichen Steuern betragen %d Euro.\n", [sv tax]);
        
        //Tests mit Standardkonstruktor
        Vehicle* v = [[Vehicle alloc] init];
        printf("%d\n", [v tax]);
        
        sv = [[SeasonalVehicle alloc] init];
        printf("%d\n", [sv tax]);
        
    }
    return 0;
}

