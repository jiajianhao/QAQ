//
//  UIColor+Category.h
//  BJHeadlines
//
//  Created by Hui Jiang on 10/10/2017.
//  Copyright © 2017 Hui Jiang. All rights reserved.
//

@interface UIColor (Category)

+ (UIColor *)colorFromHexCode:(NSString *)hexString;
+ (UIColor *)colorFromHexCode:(NSString *)hexString alpha:(float)alpha;

// 随机颜色
+ (UIColor *)randomColor;
+ (UIColor *)randomColorWithAlpha:(CGFloat)alpha;

@end
