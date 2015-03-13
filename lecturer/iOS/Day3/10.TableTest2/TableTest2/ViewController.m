//
//  ViewController.m
//  TableTest2
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h" // 코드 위쪽에 놓으세요

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ( indexPath.row %2 == 0 ) return 44;
    
    return 80;
}


// developer.apple.com


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // indexPath는 section, row를 관리하는 클래스입니다.
    if ( indexPath.row % 2 == 0 )
    {
        NSString* s2 = @"CELL2";
        
        UITableViewCell* cell = [ tableView dequeueReusableCellWithIdentifier:s2];
        
        if ( cell == nil )
        {
            cell = [ [ [ UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:s2] autorelease];
        }
        cell.textLabel.text = @"AAA";
        
        return cell;
    }
    //----------------------------------------------------------
    
    NSString* cellid = @"MYCELL";
    
    // 1. 재사용 큐에서 찾는다.
    MyTableViewCell* cell = (MyTableViewCell*)[ tableView dequeueReusableCellWithIdentifier:cellid];
    
    if ( cell == nil )
    {
        // XIB 사용하지 않았다면 아래 처럼 모든 UI를 직접 만들어야 했다.
//        cell = [ [ MyTableViewCell allc] initWithTableViewCellStyle.... ];
//        cell.name = [ [ UILabel alloc] init];
        
        // XIB에 이미 셀이 있다. XIB를 Load하면 된다.
        NSBundle* bundle = [ NSBundle mainBundle];
        NSArray* arr = [ bundle loadNibNamed:@"MyTableViewCell" owner:nil options:nil];
        
        // XIB에 0번째 최상위 객체가 우리가 원하는 cell이다.
        cell = [ arr objectAtIndex:0];
    }
    cell.name.text = @"홍길동";
    cell.phone.text = @"010-111-2222";
    cell.picture.image = [ UIImage imageNamed:@"campFire.png"]; // 그림 가져 오세요
    
    return  cell;
}
// XIB를 Load하는 2가지 방법
// 1. ViewController를 만들면서 Load : [[ ViewController alloc] initWithNibName:@"xib이름"];
// 2. NSBundle 사용 : [ bundle loadNibName:@"xib이름"]











- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
