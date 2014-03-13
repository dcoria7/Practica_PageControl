//
//  ViewController.m
//  PageControl
//
//  Created by D C on 3/11/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.scroll.contentSize =CGSizeMake(self.scroll.frame.size.width * 3, self.scroll.frame.size.height);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -UIScroll delagate


-(void)scrollViewDidScroll:(UIScrollView *)sender{
    CGFloat pageWidth = self.scroll.frame.size.width;
    int page = floor((self.scroll.contentOffset.x - pageWidth /2)/pageWidth)+1;
    self.page.currentPage=page;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    return nil;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    return nil;
}



@end
