//
//  TableController.h
//  PageControl
//
//  Created by D C on 3/13/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(weak,nonatomic)UITableView *table;

@end
