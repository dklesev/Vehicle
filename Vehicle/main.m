//
//  main.m
//  Vehicle
//
//  Created by Mac on 14.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "SeasonalVehicle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int hubraum = 0;
        
        printf("Geben Sie bitte den Hubraum des Fahrzeugs ein: ");
        scanf("%i", &hubraum);
        
        printf("Geben Sie bitte Ihr Kennzeichen ein: ");
        
        //http://axorion.com/console-input-in-objective-c/
        NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
        NSData *inputData = [NSData dataWithData:[input availableData]];
        NSString *inputString = [[NSString alloc] initWithData:inputData
                                                      encoding:NSUTF8StringEncoding];
        inputString = [inputString stringByTrimmingCharactersInSet:
                       [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        printf("\nZeitraum angeben \n(für Saisonkennzeichen, ENTER falls kein Saisonfahrzeug)\nBeginnmonat: ");

        input = [NSFileHandle fileHandleWithStandardInput];
        inputData = [NSData dataWithData:[input availableData]];
        NSString *beginn = [[NSString alloc] initWithData:inputData
                                                      encoding:NSUTF8StringEncoding];
        
        beginn = [beginn stringByTrimmingCharactersInSet:
                       [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([beginn isEqual: @""]) {
            
            Vehicle *vehicle = [[Vehicle alloc]vehicleWith: hubraum and: inputString];
            
            printf("\nIhre Angaben:\n");
            printf("Hubraum: %i\n", [vehicle capacity]);
            printf("Kennzeichen: %s\n", [[vehicle plate]UTF8String]);
            
            printf("Steuer: %f Euro", [vehicle tax]);
            
        }else{
            
            printf("Endmonat: ");
            
            input = [NSFileHandle fileHandleWithStandardInput];
            inputData = [NSData dataWithData:[input availableData]];
            NSString *ende = [[NSString alloc] initWithData:inputData
                                                   encoding:NSUTF8StringEncoding];
            
            ende = [ende stringByTrimmingCharactersInSet:
                    [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //Print result
            
            SeasonalVehicle *vehicle = [[SeasonalVehicle alloc] vehicleWith:hubraum and:inputString from:beginn and:ende];
            
            printf("\nIhre Angaben:\n");
            printf("Hubraum: %i\n", [vehicle capacity]);
            printf("Kennzeichen: %s\n", [[vehicle plate]UTF8String]);
            printf("Gültigkeitsdauer: %s\n", [[vehicle validTill]UTF8String]);
            
            printf("Steuer: %f Euro", [vehicle limitedTax]);
        }
        
    }
    return 0;
}
