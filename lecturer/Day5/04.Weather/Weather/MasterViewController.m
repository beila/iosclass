//
//  MasterViewController.m
//  Weather
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "MyCell.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // self.navigationItem.leftBarButtonItem = self.editButtonItem;

    // UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    // self.navigationItem.rightBarButtonItem = addButton;
    
    NSURL* url = [ NSURL URLWithString:@"http://www.kma.go.kr/XML/weather/sfc_web_map.xml"];
    
    NSXMLParser* parser = [ [ NSXMLParser alloc] initWithContentsOfURL:url];
    parser.delegate = self;
    
    [ parser parse];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    //-----------------
    dic = [ array objectAtIndex:indexPath.row];
    
    cell.name.text = [ dic objectForKey:@"name"];
    cell.temp.text = [ dic objectForKey:@"ta"];
    cell.desc.text = [ dic objectForKey:@"desc"];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

//------------------------

- (void)parserDidStartDocument:(NSXMLParser *)parser
{
    NSLog(@"파싱 시작");
    array = [ [ NSMutableArray alloc] init];
}


- (void)parserDidEndDocument:(NSXMLParser *)parser
{
    NSLog(@"파싱 완료 : %ld개의 지역정보", [ array count]);
}

//    <local stn_id="136" icon="02" desc="구름조금" ta="11.1">안동</local>
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(@"엘리먼트 시작 : %@", elementName);
    
    if ( [ elementName isEqualToString:@"local"])
    {
        valid = YES;
        dic = [ [ NSMutableDictionary alloc] initWithDictionary:attributeDict];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"엘리먼트 종료 : %@", elementName);
    valid = NO;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if ( valid == YES )
    {
        NSLog(@"문자열 찾음 : %@", string );
        
        // 이제 준비된 dic에 지역이름을 넣는다.
        [ dic setObject:string forKey:@"name"];
        
        // 한개 지역이 완성!!!
        [ array addObject:dic] ;
    }
}


@end
