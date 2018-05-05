//
//  BZButton.m
//  BZButton
//
//  Created by Eric on 2018/4/10.
//  Copyright © 2018年 Eric. All rights reserved.
//

#import "BZButton.h"
#import "UIView+BZ.h"

@implementation BZButton

#pragma mark - LifeCycle
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat centerX = self.width * 0.5;
    CGFloat centerY = self.height * 0.5;
    CGFloat padding = self.padding * 0.5;
    
    //先改Size和中心点, 否则会有位置显示问题
    if (self.imageSize.width !=0 && self.imageSize.height != 0) {
        self.imageView.y = centerY - self.imageSize.height * 0.5;
        self.imageView.size = self.imageSize;
    }
    
    CGFloat allWidth = self.imageView.width + self.titleLabel.width;
    CGFloat allHeight = self.imageView.height + self.titleLabel.height;
    
    self.imageView.x = centerX - allWidth * 0.5 - padding;
    self.titleLabel.x = CGRectGetMaxX(self.imageView.frame) + padding * 2;
    
    if (self.ivLeft) {
        self.imageView.x = centerX - allWidth * 0.5 - padding;
        self.titleLabel.x = CGRectGetMaxX(self.imageView.frame) + padding * 2;
    } else if (self.ivRight) {
        self.titleLabel.x = centerX - allWidth * 0.5 - padding;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + padding * 2;
    } else if (self.ivTop) {
        self.imageView.x = centerX - self.imageView.width * 0.5;
        self.imageView.y = centerY - allHeight * 0.5 - padding;
        self.titleLabel.x = centerX - self.titleLabel.width * 0.5;
        self.titleLabel.y = CGRectGetMaxY(self.imageView.frame) + padding * 2;
    } else if (self.ivBottom) {
        self.titleLabel.x = centerX - self.titleLabel.width * 0.5;
        self.titleLabel.y = centerY - allHeight * 0.5 - padding;
        self.imageView.x = centerX - self.imageView.width * 0.5;
        self.imageView.y = CGRectGetMaxY(self.titleLabel.frame) + padding * 2;
    }
    
    if (self.titleOrigin.x != 0 || self.titleOrigin.y != 0) {
        self.titleLabel.x = self.titleOrigin.x;
        self.titleLabel.y = self.titleOrigin.y;
    }
    if (self.imageOrigin.x != 0 || self.imageOrigin.y != 0) {
        self.imageView.x = self.imageOrigin.x;
        self.imageView.y = self.imageOrigin.y;
    }
}

#pragma mark - OverWrite

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)setNormalImage:(UIImage *)normalImage
{
    _normalImage = normalImage;
    
    [self setImage:normalImage forState:UIControlStateNormal];
}

- (void)setSelectedImage:(UIImage *)selectedImage
{
    _selectedImage = selectedImage;
    
    [self setImage:selectedImage forState:UIControlStateSelected];
}

- (void)setPadding:(CGFloat)padding
{
    _padding = padding;
}


@end
