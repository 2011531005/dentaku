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
@implementation ViewController{
    NSString *operation;
    NSString *number;
//    enum {start,operetion,second} state;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSEnumerator *enumerator = [numberButtons objectEnumerator];
    id anObject;
    
    while (anObject = [enumerator nextObject]) {
        UIButton *button = (UIButton*)anObject;
        button.tag = [button.titleLabel.text intValue];
    }
    [self initDentaku];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   }

- (IBAction)pushNumber:(id)sender {
    UIButton *button = (UIButton*)sender;
    //NSLog(@"Button.tag = %d", button.tag);
        
    switch ([self state]) {
        case start:
            
            if([[self LabelText].text isEqualToString:@"0"]){
                    
                [self LabelText].text = [NSString stringWithFormat:@"%d",button.tag];
            }else{
                [self LabelText].text=[NSString stringWithFormat:@"%@%d",[self LabelText].text,button.tag];
            }
            
            break;
            
        case ope:
            [self LabelText].text = [NSString stringWithFormat:@"%d",button.tag];
            [self setState:second];
            break;
            
            
        case second:
            [self LabelText].text=[NSString stringWithFormat:@"%@%d",[self LabelText].text,button.tag];
            break;
        default:
            break;
    
    }
}

-(IBAction)clearBtn:(id)sender{
   
    [self initDentaku];
}
-(IBAction)optionBtn:(id)sender{
    NSArray *decide = [NSArray arrayWithObjects:@"+",@"-",@"×",@"/",nil];
    UIButton *Button=(UIButton *)sender;
    operation = decide[Button.tag];
       
    switch ([self state]) {
        case start:
            number = [self LabelText].text;
            [self setState:ope];
            break;
            
        case ope:
            break;
            
        case second:
            [self calc];
            [self setState:ope];
            break;
            
        default:
            break;
    }
    
        
}

-(IBAction)equal_down:(id)sender{
    [self calc];
}
-(void)initDentaku{
    
    [self LabelText].text = @"0";
    [self setState:start];
}
-(void)calc{
    float result;
    if([operation isEqualToString:@"+"]){
        
        result = [number floatValue] + [[self LabelText].text floatValue];
        
    }else if([operation isEqualToString:@"-"]){
        
        result = [number floatValue] - [[self LabelText].text floatValue];
        
    }else if([operation isEqualToString:@"×"]){
        
        
        result = [number floatValue] * [[self LabelText].text floatValue];
        
    }else {
        
        result = [number floatValue] / [[self LabelText].text floatValue];
        
    }
    [self LabelText].text = [NSString stringWithFormat:@"%g",result];
    number = [self LabelText].text;    
}

@end
