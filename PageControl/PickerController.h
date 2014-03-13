//
//  PickerController.h
//  PageControl
//
//  Created by D C on 3/13/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>


@property(weak,nonatomic)IBOutlet UIPickerView *picker;
@property(weak,nonatomic)IBOutlet UILabel *label;

@end
