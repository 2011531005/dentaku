//
//  ViewController.h
//  dentaku
//
//  Created by 岩田　賢人 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    IBOutlet UILabel *result;
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
    IBOutlet UIButton *five;
    IBOutlet UIButton *six;
    IBOutlet UIButton *seven;
    IBOutlet UIButton *eight;
    IBOutlet UIButton *nine;
    IBOutlet UIButton *zero;
    IBOutlet UIButton *plus;
    IBOutlet UIButton *minus;
    IBOutlet UIButton *multiply;
    IBOutlet UIButton *divide;
    IBOutlet UIButton *equal;
    IBOutlet UIButton *clear;
    IBOutlet UIButton *dot;
    
    
}


-(IBAction) one_down:(id)sender;
-(IBAction) two_down:(id)sender;
-(IBAction) three_down:(id)sender;
-(IBAction) four_down:(id)sender;
-(IBAction) five_down:(id)sender;
-(IBAction) six_down:(id)sender;
-(IBAction) seven_down:(id)sender;
-(IBAction) eight_down:(id)sender;
-(IBAction) nine_down:(id)sender;
-(IBAction) zero_down:(id)sender;
-(IBAction) plus_down:(id)sender;
-(IBAction) minus_down:(id)sender;
-(IBAction) multiply_down:(id)sender;
-(IBAction) devide_down:(id)sender;
-(IBAction) equal_down:(id)sender;
-(IBAction) clear_down:(id)sender;
-(IBAction) dot_down:(id)sender;
@end

