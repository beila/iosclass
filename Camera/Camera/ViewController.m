//
//  ViewController.m
//  Camera
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage* img1 = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage* img2 = [info objectForKey:UIImagePickerControllerEditedImage];
    
    NSLog(@"%@", [img1 description]);
    NSLog(@"%@", [img2 description]);
    
    _imageView.image = img1;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)click1:(id)sender {
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    
    [self presentViewController:picker animated:YES completion:nil];
}

- (IBAction)click2:(id)sender {
    // 시뮬레이터에선 동작 안한다.
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.delegate = self;
    
    [self presentViewController:picker animated:YES completion:nil];
}
@end
