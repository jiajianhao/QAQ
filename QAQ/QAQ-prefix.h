//
//  QAQ-prefix.h
//  QAQ
//
//  Created by 小雨科技 on 2018/6/13.
//  Copyright © 2018 jiajianhao. All rights reserved.
//

#ifndef QAQ_prefix_h
#define QAQ_prefix_h

#ifdef __OBJC__

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
 
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif




#import "Macros.h"

#import "Masonry.h"


#import "QAQ-Swift.h"

#endif /* QAQ_prefix_h */
