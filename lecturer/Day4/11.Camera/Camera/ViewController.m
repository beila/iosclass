//
//  ViewController.m
//  Camera
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)click1:(id)sender
{
    UIImagePickerController* picker = [ [ UIImagePickerController alloc] init];
    
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    picker.delegate = self;
    
    [ self presentViewController:picker animated:YES completion:nil];
}

- (IBAction)click2:(id)sender
{
    UIImagePickerController* picker = [ [ UIImagePickerController alloc] init];
    
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    picker.editing = YES;
    picker.delegate = self;
    
    [ self presentViewController:picker animated:YES completion:nil];
}

// 앨범 또는 카메라를 통해 사진을 선택하면 아래 함수가 호출됩니다.
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* img1 = [ info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage* img2 = [ info objectForKey:UIImagePickerControllerEditedImage];
    
    if ( img2 != nil )
        _imageView.image = img2;
    else
        _imageView.image = img1;
    
    // Picker를 직접 내려야 합니다.
    [ self dismissViewControllerAnimated:YES completion:nil];
}

@end
