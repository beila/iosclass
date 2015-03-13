//
//  ViewController.m
//  AddressBook
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellId = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.textLabel.text = [contacts objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // contacts = [[NSArray alloc] initWithObjects:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click1:(id)sender
{
    ABAddressBookRequestAccessWithCompletion(ABAddressBookCreateWithOptions(NULL, nil),
                                             ^(bool granted, CFErrorRef error)
    {
        if (!granted)
        {
            NSLog(@"허용 안됨!");
        }
        else
        {
            NSLog(@"허용!");
        }
    });
}

- (IBAction)click2:(id)sender
{
    CFErrorRef *error = nil;
    ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, error);
    ABRecordRef source = ABAddressBookCopyDefaultSource(addressBook);
    CFArrayRef allPeople = ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(addressBook, source, kABPersonSortByFirstName);
    CFIndex nPeople = ABAddressBookGetPersonCount(addressBook);
    
    contacts = [[NSMutableArray alloc] initWithCapacity:nPeople];
    
    for (int i = 0; i < nPeople; i++)
    {
        ABRecordRef person = CFArrayGetValueAtIndex(allPeople, i);
        
        //get First Name and Last Name
        
        NSString* first = ABRecordCopyValue(person, kABPersonFirstNameProperty);
        NSString* last = ABRecordCopyValue(person, kABPersonLastNameProperty);
        
        if (first == nil)
            first = @"";
        if (last == nil)
            last = @"";
        
        NSLog(@"%@ %@", first, last);
        
        [contacts addObject:[NSString stringWithFormat:@"%@ %@", last, first]];
    }
    
    [_tableView reloadData];
}


- (void)dealloc {
    [_tableView release];
    [super dealloc];
}
@end



















