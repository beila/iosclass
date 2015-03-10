//
//  리터럴.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

int mainString()
{
    NSString* s1 = [[NSString alloc] initWithString:@"AAA"];
    
    NSMutableString* s2 = [[NSMutableString alloc] initWithString:s1];
    
    NSRange range;
    range.location = 1;
    range.length = 2;
    
    [s2 replaceCharactersInRange:range withString:@"BB"];
    
    NSLog(@"%@", s2);
    return 0;
}

int mainArray() {
    NSArray* arr = [[NSArray alloc] initWithObjects:@"AA", @"BB", nil];
    NSString* s1 = [arr objectAtIndex:0];
    NSLog(@"%@", s1);
    
    NSMutableArray*arr2=[[NSMutableArray alloc]initWithObjects:@"CC", @"DD", nil];
    [arr2 replaceObjectAtIndex:0 withObject:@"EE"];
    arr2[1] = @"HH";
    NSLog(@"%@", [arr2 objectAtIndex:0]);
    NSLog(@"%@", [arr2 objectAtIndex:1]);
    
    NSArray* arr3 = @[@"FF", @"GG"];
//    arr3[1] = @"II";
    NSLog(@"%@", arr3[1]);
    return 0;
}

int mainDictionary() {
    NSDictionary* dic = [[NSDictionary alloc]
                         initWithObjectsAndKeys:
                         @"월요일", @"mon",
                         @"화요일", @"tue",
                         nil, nil];
    NSLog(@"%@", [dic objectForKey:@"mon"]);
    
    NSDictionary* dic2 = @{@"wed": @"수요일",
                           @"thu": @"목요일"};
    NSLog(@"%@", dic2[@"thu"]);
    NSLog(@"%@", dic2[@"mon"]);
    
    NSMutableDictionary* dic3 = [[NSMutableDictionary alloc] initWithDictionary:dic2];
    dic3[@"fri"] = @"금요일";
    [dic3 setValuesForKeysWithDictionary:dic];
    NSLog(@"%@", dic3[@"mon"]);
    NSLog(@"%@", dic3[@"tue"]);
    NSLog(@"%@", dic3[@"wed"]);
    NSLog(@"%@", dic3[@"thu"]);
    NSLog(@"%@", dic3[@"fri"]);
    NSLog(@"%@", dic3[@"sat"]);
    return 0;
}

int main() {
    mainString();
    NSLog(@"\n");
    mainArray();
    NSLog(@"\n");
    mainDictionary();
}