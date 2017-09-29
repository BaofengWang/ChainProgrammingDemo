//
//  Person.h
//  链式编程和函数编程
//
//  Created by 383Mac on 2017/9/29.
//  Copyright © 2017年 383Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject



//传统的做法
-(void)eat;
-(void)run;


//链式编程方法

-(Person *)eat1;
-(Person *)run1;

//函数式编程方法
-(Person *(^)())run2;

-(Person *(^)(double distance))run3;
-(Person *(^)(NSString * food))eat2;




@end
