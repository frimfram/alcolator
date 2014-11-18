//
//  ViewController.h
//  Alcolator
//
//  Created by Jean Ro on 11/16/14.
//  Copyright (c) 2014 Jean Ro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UISlider *beerCountSlider;
@property (weak, nonatomic) UILabel *resultLabel;

-(void)buttonPressed:(UIButton *)sender;
-(void)updateResultLabelText;
@end

