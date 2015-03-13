//
//  ViewController.m
//  TableTest
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ( section == 0 ) return 5;
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellid = @"MYCELL";
    // 재사용큐에서 셀이 있는지 찾아낸다.
    UITableViewCell* cell = [ tableView dequeueReusableCellWithIdentifier:cellid  ];
    
    if ( cell == nil )
    {
        cell = [ [[ UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid] autorelease];
     
        NSLog(@"Create CELL : %d, %d", indexPath.section, indexPath.row);
    }
    else
    {
        NSLog(@"재사용 section : %d  Row : %d", indexPath.section, indexPath.row);
    }
    
    // 하나의 CELL은 총 4개의 컨트롤이 있습니다.
    cell.textLabel.text = [ NSString stringWithFormat:@"%d-%d Cell", indexPath.section,
                               indexPath.row];
    
    cell.detailTextLabel.text = @"세부 설명";
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator; // 버튼종류
    
    cell.imageView.image = [ UIImage imageNamed:@"campFire.png"];
    
    return cell;
    
}








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
