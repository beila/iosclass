// 리터럴 문법
// 정의 : NSString, NSNumber, NSArray, NSDictornary

#import <Foundation/Foundation.h>

int main()
{
    // 리터럴 문자
    // NSString* str = [NSString stringWithString:@"hello"];
    NSString* str = @"hello";
    
    // 리터럴 숫자
    NSNumber* n = [NSNumber numberWithInt:1];
    n = @1;
    n = @2.5f;
    n = @3.14;
    
    // 리터럴 배열
    NSArray* animals = [NSArray arrayWithObjects:@"cat", @"dog", nil];
    animals = @[@"cat", @"dog"];
    
    NSString* dog = [animals objectAtIndex:1];
    NSString* cat = animals[0];
    
    // 리터럴 사전
    // 사전 : 키-값 쌍을 추가할 수 있는 맵 자료구조
    NSDictionary* people = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"Matt", @"firstName",
                            @"Galloway", @"lastName",
                            [NSNumber numberWithInt:28], @"age",
                            nil];
    NSString* lastName = [people objectForKey:@"lastName"];
    
    
    people = @{@"firstName": @"Matt",
               @"lastName" : @"Galloway",
               @"age" : @28};
    lastName = people[@"lastName"];
    
    // 가변 배열과 사전
    
    NSMutableArray* mArray = [[NSMutableArray alloc] initWithCapacity:4];
    [mArray addObject:@1];
    [mArray addObject:@2];
    
    //    NSMutableArray* mArray = [@[@1, @2, @3, @4, @5] mutableCopy];
    //    mArray[1] = @"dog";
    
    NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithCapacity:3];
    dic[@"lastName"] = @"Yun";
    
}











