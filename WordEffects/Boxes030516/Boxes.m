//
//  Boxes.m
//  Boxes030516
//
//  Created by Yasmin Ahmad on 2016-05-03.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "Boxes.h"

@implementation Boxes


-(instancetype)initWithWidth:(float)width height:(float)height length:(float)length{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}


-(float)volume{
    
    return self.width * self.height * self.length;
}


-(float)numberOfTimesFitsIn:(Boxes*)anotherBox{
    
    float boxAVolume = [self volume];
    float boxBVolume = [anotherBox volume];
    
    float sizeResults;
    
    if (boxAVolume > boxBVolume) {
        
        sizeResults = boxAVolume / boxBVolume;
    }
    else{
        
        sizeResults = boxBVolume / boxAVolume;
    }
    
    return sizeResults; 
}


@end
