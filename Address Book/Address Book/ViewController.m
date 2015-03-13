//
//  ViewController.m
//  Address Book
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"
#import <AddressBook/AddressBook.h>

@interface ViewController ()
{
    NSMutableArray* people;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)authorize:(id)sender;
- (IBAction)load:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    
    people = [[NSMutableArray alloc] init];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)authorize:(id)sender {
    NSLog(@"%s", __func__);
    
    ABAddressBookRequestAccessWithCompletion(ABAddressBookCreateWithOptions(NULL, nil),
                                             ^(bool granted, CFErrorRef error) {
                                                 NSLog(@"%s %@", __func__, granted?@"허용됨":@"거절됨");
                                             });
}

- (IBAction)load:(id)sender {
    NSLog(@"%s", __func__);
    
    CFErrorRef* error = nil;
    ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, error);
    ABRecordRef source = ABAddressBookCopyDefaultSource(addressBook);
    CFArrayRef allPeople = ABAddressBookCopyArrayOfAllPeopleInSource(addressBook, source);
    CFIndex nPeople = ABAddressBookGetPersonCount(addressBook);
    
    for (int i = 0; i < nPeople; ++i) {
        ABRecordRef person = CFArrayGetValueAtIndex(allPeople, i);
        NSString* first = (__bridge NSString*)ABRecordCopyValue(person, kABPersonFirstNameProperty);
        NSString* last = (__bridge NSString*)ABRecordCopyValue(person, kABPersonLastNameProperty);
        NSLog(@"%@ %@", first, last);
        [people addObject:[NSString stringWithFormat:@"%@ %@", first, last]];
    }
    
    [_tableView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"person" forIndexPath:indexPath];
    cell.textLabel.text = people[indexPath.row];
    return cell;
}

@end
