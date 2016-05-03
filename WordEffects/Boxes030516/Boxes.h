//
//  Boxes.h
//  Boxes030516
//
//  Created by Yasmin Ahmad on 2016-05-03.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Boxes : NSObject

@property (assign, nonatomic) float height;
@property (assign, nonatomic) float length;
@property (assign, nonatomic) float width;

-(instancetype)initWithWidth:(float)width height:(float)height length:(float)length; 
-(float)volume;
-(float)numberOfTimesFitsIn:(Boxes*)anotherBox; 



@end
