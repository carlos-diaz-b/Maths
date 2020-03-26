//
//  main.m
//  Maths
//
//  Created by Carlos andres Diaz bravo  on 2020-03-25.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>

float getUserInput(int answer, NSString *prompt){
    if (answer == answer){
        NSLog(@"Right");
    } else {
        NSLog(@"Wrong");
    }


  NSLog(@"%@", prompt);
  char inputChars[answer];
  char *result = fgets(inputChars, answer, stdin);
  if(result != NULL){
    NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return [theString floatValue];
  }
  return 0.0;
}






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    float question1 = getUserInput(6, @"\n 2 * 3:");
    float question2 = getUserInput(50, @"\n  5 * 10:");
    float question3 = getUserInput(80, @"\n 20 * 4:");
    float question4 = getUserInput(27, @"\n 5 + 22:");
    float question5 = getUserInput(880, @"\n 220 * 4:");
    float question6 = getUserInput(102, @"\n 34 * 3:");
    float question7 = getUserInput(8, @"\n 12 - 4:");
       
         
    return 0;
    }
}

