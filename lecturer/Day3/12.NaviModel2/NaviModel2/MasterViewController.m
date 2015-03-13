//
//  MasterViewController.m
//  NaviModel2
//
//  Created by chansigi on 3/11/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController () {
    NSMutableArray* _objects;
}

@end

@implementation MasterViewController

// xib 파일로 초기화 되었을 경우 호출되는 지정 초기화 메소드.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Master View";
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //-----
    UIBarButtonItem* addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)insertNewObject:(id)sender
{
    NSLog(@"...");
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }

    [_objects insertObject:[NSDate date] atIndex:0];

    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:0 inSection:0];

    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_objects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [_objects[indexPath.row] description];
    return cell;
}


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    // Pass the selected object to the new view controller.
    detailViewController.detailItem = _objects[indexPath.row];
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
