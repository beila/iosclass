//
//  ViewController.h
//  AddressBook
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AddressBook/AddressBook.h> // AddressBook.framework.. 

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray* contacts;
}

@property (retain, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end
