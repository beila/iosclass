//
//  TableViewController.m
//  StoryBoard
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()
{
    NSMutableArray* array;
    NSMutableDictionary* dic;
    
    int valid;
    int index;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    
    NSURL* url = [NSURL URLWithString:@"http://www.kma.go.kr/XML/weather/sfc_web_map.xml"];
    NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    parser.delegate = self;
    [parser parse];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - NSXMLParserDelegate

- (void)parserDidStartDocument:(NSXMLParser *)parser {
    NSLog(@"%s", __func__);
    array = [[NSMutableArray alloc] init];
    valid = NO;
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    NSLog(@"%s", __func__);
    NSLog(@"XML 파싱 완료: %ld개 지역 정보", [array count]);
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    NSLog(@"%s %@ 엘리먼트 시작", __func__, elementName);
    
    if (![elementName isEqualToString:@"local"]) return;
    
    valid = YES;
    dic = [[NSMutableDictionary alloc] initWithDictionary:attributeDict];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if (!valid) return;
    NSLog(@"%s %@ 엘리먼트 끝", __func__, elementName);
    
    valid = NO;
    [array addObject:dic];
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (!valid) return;
    NSLog(@"%s %@ 문자열 찾음", __func__, string);
    
    dic[@"name"] = string;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"%s", __func__);
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%s", __func__);
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"city" forIndexPath:indexPath];
 
    dic = array[indexPath.row];
    cell.cityLabel.text = dic[@"name"];
    cell.degreeLabel.text = dic[@"ta"];
    cell.weatherLabel.text = dic[@"desc"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
