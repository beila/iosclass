//
//  MyAlertView.m
//  CustomControl
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    
    NSString* s = [ NSString stringWithFormat:@"%@\n\n\n", message];
    
    self = [ super initWithTitle:title
                         message:s
                        delegate:delegate
               cancelButtonTitle:cancelButtonTitle
               otherButtonTitles:otherButtonTitles, nil];
    
    if( self != nil )
    {
        CGRect rc = CGRectMake(20,80,120,30);
        
        UITextField* txtField = [[ UITextField alloc] initWithFrame:rc];
        
        txtField.backgroundColor = [ UIColor whiteColor];
        
        
        [ self addSubview:txtField];
        
        // Alert위에 있는 모든 자식들..
        NSArray* array = self.subviews;
        
        //   for( int i = 0; i < [ array count] ; i++ )
        //   {
        //       UIView* v = [ array objectAtIndex:i];
        
        // C#  의 foreach,  Objective-C에서는 Fast Enumeration
        for ( UIView* v in array)
        {
            Class cs = [ v class];
            
            // desription 는 해당 객체를 문자열로 변환해 줍니다.
            NSLog(@"%@", [ cs description ]);
            // Class의 경우 클래스 이름이 나옵니다.
            
            NSString* s2 = NSStringFromClass(cs);
            
            //if ( [ v isKindOfClass:[ UIAlertButton class]])
            
            if ( [ s2 isEqualToString:@"UIAlertButton"])
            {
                v.backgroundColor = [ UIColor redColor];
            }
        }
    }
    
    return self;
}

@end
