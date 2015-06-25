//
//  PagedScrollView.h
//  myScrollView
//
//  Created by tunguyen on 6/25/15.
//  Copyright (c) 2015 tunguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PagedScrollView : UIViewController <UIScrollViewDelegate>


@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;

@end
