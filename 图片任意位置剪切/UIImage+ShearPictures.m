//
//  UIImage+ShearPictures.m
//  图片任意位置剪切
//
//  Created by 韩新辉 on 2017/2/8.
//  Copyright © 2017年 韩新辉. All rights reserved.
//

#import "UIImage+ShearPictures.h"

@implementation UIImage (ShearPictures)
- (UIImage*)ShearPicturesSize:(CGRect)rect{
    //获得要剪切的部分
    CGImageRef shearImage = CGImageCreateWithImageInRect(self.CGImage, rect);
    
    //获得图片的frame
    CGRect smallRet = CGRectMake(0, 0, CGImageGetWidth(shearImage), CGImageGetHeight(shearImage));
   
    //开始绘制
    UIGraphicsBeginImageContext(smallRet.size);
   
    //绘制图片上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallRet, shearImage);//第一个参数获得的上下文，第二个参数图片大小，第三个参数要剪切图片内容
    
    //得到剪切后的图片
    UIImage *image = [UIImage imageWithCGImage:shearImage];
 
    //结束绘制
    UIGraphicsEndImageContext();
    
    return image;

}

@end
