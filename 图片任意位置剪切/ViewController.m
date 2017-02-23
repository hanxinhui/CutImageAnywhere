//
//  ViewController.m
//  图片任意位置剪切
//
//  Created by 韩新辉 on 2017/2/8.
//  Copyright © 2017年 韩新辉. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ShearPictures.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self shearImage];
}

- (void)shearImage {
    UIImage *image = [UIImage imageNamed:@"3.png"];
    UIImage *shareImage = [image ShearPicturesSize:CGRectMake(60, 80, 100, 200)];
    UIImageWriteToSavedPhotosAlbum(shareImage, nil, nil, nil);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
