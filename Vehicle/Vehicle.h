//
//  Vehicle.h
//  Vehicle
//
//  Created by cianorob on 16.10.13.
//  Copyright (c) 2013 cianorob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject {
    
@private int _capacity;
@private NSString* _plate;
    
}

//@property int capacity;
//@property char *plate;

-initWithCapacity:(int)capacity AndPlate:(NSString*) plate;
- (int) capacity;
- (NSString*) plate;
- (void) setCapacity: (int) capacity;
- (void) setPlate: (NSString*) plate;
- (int) tax;

@end
