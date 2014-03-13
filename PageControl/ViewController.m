//
//  ViewController.m
//  PageControl
//
//  Created by D C on 3/11/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *iArray;
    NSMutableArray *names;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    iArray=[[NSMutableArray alloc]initWithObjects:@"ferrari-negro.jpg",@"adidas.png", nil];
    names = [[NSMutableArray alloc]initWithObjects:@"Ferrari",@"Adidas", nil];
    
    for(int i=0;i<[iArray count]; i++){
        CGRect frame;
        frame.origin.x = self.scroll.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scroll.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[iArray objectAtIndex:i]];
        [self.scroll addSubview:imageView];
        
        UILabel *label =[[UILabel alloc]initWithFrame:frame];
        label.text=[NSString stringWithFormat:@"%@",names[i]];
        label.textColor =[UIColor redColor];
        [self.scroll addSubview:label];
        
    }
    self.scroll.contentSize =CGSizeMake(self.scroll.frame.size.width * [iArray count], self.scroll.frame.size.height);
    
    
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
