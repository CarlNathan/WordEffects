//
//  main.m
//  WordEffects
//
//  Created by Carl Udren on 1/11/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    {
        BOOL infiniteLoopCondition = YES;
        NSArray *options = @[@"1. Uppercase", @"2. Lowercase", @"3.Numberize", @"4.Canadianize", @"5.Respond", @"6.De-space-it"];
       while (infiniteLoopCondition) {
        
            char inputChars[255];
            printf("input a string: ");
            scanf("%s", inputChars);
            printf("Your string is %s\n", inputChars);

           NSLog(@"%@", options);
           
            int inputOperation;
            printf("Enter your desired operation(1-6):");
            scanf("%d", &inputOperation);
            printf("Your number is %d\n", inputOperation);

        
        
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSLog(@"Input was: %@", inputString);
            NSString *response = [[NSString alloc] init];
            NSInteger asInt;
           
            switch (inputOperation) {
                case 1:
                    response = [inputString uppercaseString];
                    NSLog(@"%@",response);
                    break;
                    
                case 2:
                    response = [inputString lowercaseString];
                    NSLog(@"%@",response);
                    break;
                    
                case 3:
                    asInt = [inputString integerValue];
                    if (asInt == 0) {
                        if ([inputString isEqualToString:@"0"]) {
                            NSLog(@"Conversion Completed: %ld",(long)asInt);
                            break;
                        }else{
                            NSLog(@"Conversion could not be completed");
                            break;
                        }
                    }
                    NSLog(@"Conversion completed: %ld",(long)asInt);
                    break;
                    
                case 4:
                    response = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"%@",response);
                    break;
                    
                case 5:
                    if ([inputString hasSuffix:@"?"]) {
                        NSLog(@"I don't know");
                    } else if ([inputString hasSuffix:@"!"]){
                        NSLog(@"Whoa, calm down!");

                    }else {
                        NSLog(@"Sounds good");
                    }
                    break;
                    
                case 6:
                    response = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", response);
                    break;
                    
                default:
                    NSLog(@"You have not choosen a valid operation.  Please try again.");
                    break;
            }
        }
        
   }
    return 0;
}
