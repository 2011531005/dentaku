//
//  ViewController.h
//  dentaku
//
//  Created by 岩田　賢人 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    BOOL startInput;
    float currentValue;
    int operation;
    IBOutlet UILabel *result;
    
    IBOutletCollection(UIButton) NSArray *numberButtons;
    
    
    IBOutlet UIButton *plus;
    IBOutlet UIButton *minus;
    IBOutlet UIButton *multiply;
    IBOutlet UIButton *divide;
    IBOutlet UIButton *equal;
    IBOutlet UIButton *clear;
    IBOutlet UIButton *dot;
    
    
}
@property (retain,nonatomic)IBOutlet UILabel *LabelText;


- (IBAction)pushNumber:(id)sender;

-(IBAction) plus_down:(id)sender;
-(IBAction) minus_down:(id)sender;
-(IBAction) multiply_down:(id)sender;
-(IBAction) devide_down:(id)sender;
-(IBAction) equal_down:(id)sender;
-(IBAction) clear_down:(id)sender;
-(IBAction) dot_down:(id)sender;
@end

