//
//  Vehicle.m
//  Vehicle
//
//  Created by cianorob on 16.10.13.
//  Copyright (c) 2013 cianorob. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (id) initWithCapacity:(int) capacity AndPlate:(NSString*) plate {
    
    if (!(self = [super init]))
        return nil;
    self.capacity = capacity;
    self.plate = plate;
    return self;
    
}

- (int) capacity {
    
    return _capacity;
    
}

- (NSString*) plate {
    
    return _plate;
    
}

- (void) setCapacity:(int)capacity {

    _capacity = capacity;

}

- (void) setPlate:(NSString *)plate {

    _plate = plate;

}



- (int) tax {
    
    return ((int)(self.capacity / 100)) * 5;
    
}

@end
