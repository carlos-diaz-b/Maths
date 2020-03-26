//
//  main.m
//  Maths
//
//  Created by Carlos andres Diaz bravo  on 2020-03-25.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddingQuestion.h"


int getUserInput(int answer, NSString *prompt){
   if (answer < 1){
      answer = 1000;
    }


  NSLog(@"%@", prompt);
  char inputChars[answer];
  char *result = fgets(inputChars, answer, stdin);
  if(result != NULL){
    NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return [theString intValue];
  }
  return 0.0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         
        int count = 0;
        int right = 0;
        int wrong = 0;
        
        NSString *operator = @"+";
        while (count < 2) {
            int rn1 = arc4random_uniform(100);
            int rn2 = arc4random_uniform(50);
            
            NSString *back = [NSString stringWithFormat:@"%i %@  %i", rn1, operator, rn2];
            NSLog(@"%@", back);
            int user_input = getUserInput(1000, @"Answer");
            if (user_input == rn1 + rn2) {
                right += 1;
                     
            }else {
                wrong += 1;
                    
            }
            count += 1;
            
        
        }

    NSLog(@"%i", right);
    NSLog(@"%i", wrong);
    }
    return 0;
}
