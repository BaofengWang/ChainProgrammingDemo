//
//  ViewController.m
//  链式编程和函数编程
//
//  Created by 383Mac on 2017/9/29.
//  Copyright © 2017年 383Mac. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"-------之前传统的调用方式---------");
    
    Person *aPerson = [[Person alloc]init];
    [aPerson run];
    [aPerson eat];
    
    NSLog(@"-----现在的链式调用方式-----------");
    //链式的编程方式
    
    [[[[aPerson eat1] run1] eat1] run1];
    
    NSLog(@"------函数调用方式----------");
    
    aPerson.run2().run2();
    
    NSLog(@"------------");
    
    aPerson.eat2(@"Water").run3(1000) ;
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
