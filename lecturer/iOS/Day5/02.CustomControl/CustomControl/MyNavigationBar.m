//
//  MyNavigationBar.m
//  CustomControl
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "MyNavigationBar.h"

@implementation MyNavigationBar

// 스토리 보드나 또는 XIB 로 생성을 하면 아래의 초기화 함수가 호출됩니다.
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [ super initWithCoder:aDecoder];
    
    if ( self )
    {
        _imgView = [[ UIImageView alloc] initWithFrame:CGRectMake(0,0,480,64)];
        [ self addSubview:_imgView];
        _imgView.image = [ UIImage imageNamed:@"0.png"];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

@end
