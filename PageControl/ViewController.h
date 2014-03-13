//
//  ViewController.h
//  PageControl
//
//  Created by D C on 3/11/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>{
    
}

@property (weak,nonatomic)IBOutlet UIPageControl *page;
@property (weak,nonatomic)IBOutlet UIScrollView *scroll;
@property(weak,nonatomic)IBOutlet UIImageView *img1;
@property(weak,nonatomic)IBOutlet UIImage *img2;
@property(weak,nonatomic)IBOutlet UIImage *img3;


@end
