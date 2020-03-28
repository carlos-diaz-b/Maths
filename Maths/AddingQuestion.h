//
//  AddingQuestion.h
//  Maths
//
//  Created by Carlos andres Diaz bravo  on 2020-03-25.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddingQuestion : NSObject

@property (nonatomic, assign) int RandNum1;
@property (nonatomic, assign) int RandNum2;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endtime;




- (instancetype) initWithRandNum1:(int) RandNum1 andRandNum2:(int) RandNum2 andstartTime:(NSDate*) startTime;
- (BOOL) answer:(int) ans;
- (int) ScoreKeeper:(int) r andW: (int) w;
- (NSTimeInterval) answerTime:(NSDate*) anotherDate;
