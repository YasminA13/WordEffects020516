//
//  main.m
//  Boxes030516
//
//  Created by Yasmin Ahmad on 2016-05-03.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boxes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Boxes *boxA = [[Boxes alloc]initWithWidth:20 height:40 length:65];
        NSLog(@"Box A has a volume of: %2.f", [boxA volume]);
        
        Boxes *boxB = [[Boxes alloc]initWithWidth:10 height:5 length:30];
        NSLog(@"Box B has a volume of: %2.f", [boxB volume]);
        
        float fitsIn = [boxA numberOfTimesFitsIn:boxB];
        
        NSLog(@"The box will fit in %2.f times", fitsIn);
        
    }
    return 0;
}
