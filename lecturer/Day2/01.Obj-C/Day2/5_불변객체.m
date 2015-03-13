//
//  main.m
//  Mutable
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <Foundation/Foundation.h>

#if 0
 int main()
{
    NSString* x[10]; // C Style 배열
    
    // Objective-C 클래스 : id 타입을 저장하는 클래스. ,로 인자를 보내는 것은 C가변인자 기술입니다.
    NSArray* arr = [[ NSArray alloc]  initWithObjects:@"AA", @"BB", @"CC", nil];
    
    NSString* s1 = [ arr objectAtIndex:0]; // arr[0] 을 사용할수 없습니다. -연산자 재정의 개념이 없습니다.
    [ arr addObject:@"A"]; // error. NSArray는 immutable 합니다.
    
    NSLog(@"%@", s1);
}
#endif
 

#if 0
// 1. Mutable vs Immutable
int main(int argc, const char * argv[])
{
    // Objective-C의 NSString immutable 합니다.
    NSString* s1 = [ [ NSString alloc] initWithString:@"AAA"];
    [ s1 ]
    
    NSMutableString* s2 = [ [ NSMutableString alloc] initWithString:@"AAA"];
    
    NSRange range;
    range.location = 1;
    range.length = 2;
    
    [ s2 replaceCharactersInRange:range withString:@"BB"];
    
    NSLog(@"%@", s2);
    
    return 0;
}
#endif

#if 0
// 2. Collections
int main()
{
    // 아이폰에서 가장 많이 사용하는 자료 구조 - map : 키값으로 data 보관
    NSDictionary* dic = [ [ NSDictionary alloc] initWithObjectsAndKeys:@"월요일", @"mon",
                                                                       @"화요일", @"tue",
                                                                        nil, nil];
    NSString* s1 = [ dic objectForKey:@"mon"]; // 월요일을 꺼내 보세요 ??
    
    NSLog(@"%@", s1);
}
#endif





















