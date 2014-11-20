//
//  MainMenuViewController.m
//  Alcolator
//
//  Created by Jean Ro on 11/19/14.
//  Copyright (c) 2014 Jean Ro. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ViewController.h"
#import "WhiskeyViewController.h"

@interface MainMenuViewController ()
@property (nonatomic, weak) UIButton *wineButton;
@property (nonatomic, weak) UIButton *whiskeyButton;
@end

@implementation MainMenuViewController

- (void)loadView {
    self.view = [[UIView alloc] init];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    
    self.wineButton = button1;
    self.whiskeyButton = button2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:206 green:193 blue:231 alpha:1];
    
    [self.wineButton setTitle:NSLocalizedString(@"Wine", @"Wine button title") forState:UIControlStateNormal];
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    self.wineButton.titleLabel.font = [UIFont fontWithName:@"Arial" size:30];
    
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whisky", @"Whiskey button title") forState:UIControlStateNormal];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    self.whiskeyButton.titleLabel.font = [UIFont fontWithName:@"Arial" size:30];
    
    self.title = NSLocalizedString(@"Select Alcolator", @"select alcolator");
    
}

- (void)viewWillLayoutSubviews {
    //[self viewWillLayoutSubviews];
    
    CGSize screenSize = [self currentScreenSize];
    CGFloat screenWidth = screenSize.width;
    CGFloat buttonWidth = (screenWidth - 60) /2;
    CGFloat buttonHeight = 60;
    CGFloat buttonTop = screenSize.height/2 - 30;
    
    self.wineButton.frame = CGRectMake(20, buttonTop, buttonWidth, buttonHeight);
    CGFloat whiskeyButtonX = CGRectGetMaxX(self.wineButton.frame) + 20;
    self.whiskeyButton.frame = CGRectMake(whiskeyButtonX, buttonTop, buttonWidth, buttonHeight);
    
}

- (void)winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void)whiskeyPressed:(UIButton *)sender {
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

-(CGSize)currentScreenSize {
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    if( (NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return CGSizeMake(screenSize.height, screenSize.width);
    }
    return screenSize;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
