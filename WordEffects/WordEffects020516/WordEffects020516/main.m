//
//  main.m
//  WordEffects020516
//
//  Created by Yasmin Ahmad on 2016-05-02.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        char inputChars[255];
        
        while (true) {
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        
        printf("Your string is: %s", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
        if ([inputString containsString:@"?"]) {
            NSLog(@"I don't know");
        }
        
        else if ([inputString containsString:@"!"]){
            NSLog(@"Whoa calm down!");
        }
        
        printf("Select one of the follwing ways to output your text: UPPERCASE, lowercase, Numberize, Canadianize, NoSpaces: ");
        fgets(inputChars, 255, stdin);
        NSString *styleString = [NSString stringWithUTF8String:inputChars];
        
        styleString = [styleString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        if ([styleString isEqualToString:@"UPPERCASE"]) {
            NSString *uppercase = [inputString uppercaseString];
            NSLog(@"Your text in UPPERCASE is: %@", uppercase);
        }
        
        else if ([styleString isEqualToString:@"lowercase"]){
            NSString *lowercase = [inputString lowercaseString];
            NSLog(@"Your text in lowercase is: %@", lowercase);
        }
        
        else if ([styleString isEqualToString:@"Canadianize"]){
            NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
            NSLog(@"Your Canadianized text is: %@", canadianize);
        }
        
        else if ([styleString isEqualToString:@"NoSpaces"]){
            NSString *dashes = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"Okay, no spaces! How about some dashes: %@", dashes);
        }
        
        else if ([styleString isEqualToString:@"Numberize"]){
            int inputAsNumber = [inputString intValue];
            NSLog(@" %d", inputAsNumber);
            
            }
        }
        
    }
    
    return 0;
}
