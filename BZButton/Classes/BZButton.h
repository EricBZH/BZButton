//
//  BZButton.h
//  BZButton
//
//  Created by Eric on 2018/4/10.
//  Copyright © 2018年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface BZButton : UIButton

@property (nonatomic, strong) IBInspectable UIImage *normalImage;
@property (nonatomic, strong) IBInspectable UIImage *selectedImage;

@property (nonatomic, assign) IBInspectable BOOL ivTop;
@property (nonatomic, assign) IBInspectable BOOL ivLeft;
@property (nonatomic, assign) IBInspectable BOOL ivBottom;
@property (nonatomic, assign) IBInspectable BOOL ivRight;

@property (nonatomic, assign) IBInspectable CGFloat padding;

@property (nonatomic, assign) IBInspectable CGSize imageSize;
@property (nonatomic, assign) IBInspectable CGPoint imageOrigin;

@property (nonatomic, assign) IBInspectable CGPoint titleOrigin;

@end
