//
//  Person.m
//  链式编程和函数编程
//
//  Created by 383Mac on 2017/9/29.
//  Copyright © 2017年 383Mac. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)eat{
    NSLog(@"吃");
}
-(void)run{
    NSLog(@"跑");
}

-(Person *)eat1{
    NSLog(@"eat1 吃");
    return  self;
}
-(Person *)run1{
    NSLog(@"run1 跑");
    return  self;
}



-(Person *(^)())run2{
    
    return ^(){
        NSLog(@"Block Run2");
        return self;
    };
}

-(Person *(^)(NSString *))eat2 {
    
    return ^(NSString *food){
        
        NSLog(@"eat %@",food);
        
        return self;
    };
}




-(Person *(^)(double))run3{
    
    return ^(double distace){
        
        NSLog(@"跑 %lf",distace);
        return self;
        
    };
}







@end
