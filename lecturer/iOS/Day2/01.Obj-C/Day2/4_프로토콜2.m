
#import <Foundation/Foundation.h>

@interface Printer : NSObject<NSURLConnectionDataDelegate>
@property NSMutableData* incomingData;
@end

@implementation Printer

// 메세지가 도착할 때마다 호출된다.
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"...");
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString* string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    
    NSLog(@"downloading bytes : %lu", [string length]);
    
    NSLog(@"\n%@", string);
}

@end


int main()
{
    Printer* printer = [[Printer alloc] init];
    
    NSURL* url = [NSURL URLWithString:@"http://www.daum.net"];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    
    __unused NSURLConnection* conn = [[NSURLConnection alloc]
                                      initWithRequest:request
                                      delegate:printer
                                      startImmediately:YES];
    
    [[NSRunLoop currentRunLoop] run];
}















