//
//  ViewController.h
//  dentaku
//
//  Created by 岩田　賢人 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    IBOutletCollection(UIButton) NSArray *numberButtons;
}
@property (retain,nonatomic)IBOutlet UILabel *LabelText;
@property enum {start,ope,second} state;
- (IBAction)pushNumber:(id)sender;
-(IBAction)optionBtn:(id)sender;
-(IBAction) equal_down:(id)sender;
-(IBAction) clearBtn:(id)sender;
-(IBAction) dot_down:(id)sender;
@end

