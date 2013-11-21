//
//  ViewController.m
//  dentaku
//
//  Created by 岩田　賢人 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSEnumerator *enumerator = [numberButtons objectEnumerator];
    id anObject;
    
    while (anObject = [enumerator nextObject]) {
        UIButton *button = (UIButton*)anObject;
        button.tag = [button.titleLabel.text intValue];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   }

- (IBAction)pushNumber:(id)sender {
    UIButton *button = (UIButton*)sender;
    //NSLog(@"Button.tag = %d", button.tag);
    if(button.tag==0){
        _LabelText.text = [NSString stringWithFormat:@"d",button.tag];
        startInput=NO;
    }else{
        _LabelText.text=[NSString stringWithFormat:@"%@%d",_LabelText.text,button.tag];
    }
       
    }
}

-(IBAction)clearBtn
@end
