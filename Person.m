//
//  Person.m
//  KVOAbout
//
//  Created by cwwmac02 on 16/12/20.
//  Copyright © 2016年 cwwmac02. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person{
    Dog *dog;
}

- (instancetype)init{
    if (!self) {
        self = [[Person alloc]init];
    }
    dog = [[Dog alloc]init];
    [dog addObserver:self forKeyPath:@"aaaaaaa" options:NSKeyValueObservingOptionNew context:nil];

    return self;
}

- (void)setdog{
    [dog setValue:[NSString stringWithFormat:@"%d",arc4random() % 10000] forKey:@"aaaaaaa"];
    
    NSLog(@"%@",[dog valueForKey:@"aaaaaaa"]);
    
    [dog setdddddd];
    
//    dog.aaaaaaa = @"dddddd";
}


- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    NSLog(@"%@",keyPath);
    NSLog(@"%@",object);
    NSLog(@"%@",change);
   
}
@end
