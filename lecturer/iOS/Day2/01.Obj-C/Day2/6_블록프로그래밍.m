
#import <Foundation/Foundation.h>

// 블럭 프로그래밍 : IOS 4.0 부터 나왔는데. Objective-C가 아닌 C언어의 확장입니다.
//                아이폰의 최신 기술은 전부 블럭으로 되어 있습니다.

// 1. 코드 덩어리를 참조 하는 변수
// 2. 함수 인자로 블럭을 받으면 코드 자체를 인자로 전달할수 있다.
// 3. Objective-C와 블럭


#if 0
int Add(int a, int b) { return a + b; }

int main()
{
    int(*f)(int, int) = &Add;
    
    NSLog(@"%d", f(1,2) );
    
    
    int(^b)(int, int) = ^(int x, int y) { return x + y;};
    
    NSLog(@"%d", b (1,2) );
    
}
#endif


#if 0
@interface Car : NSObject

-(void)foo:(int)a code:(void(^)(int, int) )b;
@end

@implementation Car

-(void)foo:(int)a code:( void(^)(int, int) )b { b(10,20); }

@end

int main()
{
    Car* p = [ Car alloc];
    
    [ p foo:10 code:^(int a, int b) { NSLog(@"%d, %d", a, b); } ];
}
#endif

#if 0
void Sort( int* x, int n, int(^cmp)(int, int) )
{
    for ( int i = 0; i < n-1; i++ )
    {
        for ( int j = i+1; j < n; j++ )
        {
            //    if ( x[i] > x[j])
            
            if ( cmp(x[i], x[j]) > 0 )
                swap(x[i], x[j]);
        }
    }
}

int main()
{
    int x[10] = { 1,3,5,7,9,2,4,6,8,10};
    
    Sort(x, 10, ^(int a,int b) { return a -b; } );
}
#endif
 



