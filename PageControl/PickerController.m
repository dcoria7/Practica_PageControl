//
//  PickerController.m
//  PageControl
//
//  Created by D C on 3/13/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "PickerController.h"

@interface PickerController (){
    
    NSMutableArray *array;
    
}

@end

@implementation PickerController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    array=[[NSMutableArray alloc]initWithObjects:@"Mac Pro",@"iPhone", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark Picker DataSource


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    return [array count];
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    
    return array[row];
}



-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    
    return 40;
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"numero: %ld",(long)row);
    [self.picker selectedRowInComponent:0];
    
    NSLog(@"texto: %@", [array objectAtIndex:row]);
    self.label.text=[array objectAtIndex:row];
    
   //[self.delegate sliderValueDidChanged:self data:texto];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [[self view]endEditing:YES];
    self.label.text=@"";
}





@end
