//
//  ViewController.m
//  objectiveCLabb1AmandaYammine
//
//  Created by amanda yammine on 2020-01-16.
//  Copyright © 2020 amanda yammine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@property (nonatomic) NSString *Aboutme;
@property (nonatomic) NSString *Education;
@property (nonatomic) NSString *Hobbys;
- (IBAction)AboutMePressButton:(id)sender;
-(IBAction)EducationPressButton:(id)sender;
- (IBAction)HobbysPressButton:(id)sender;


@property NSString *currentColor;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.currentColor = @"white";
    [self saveSettings];
}
- (IBAction)changeBackgroundColor:(UIButton *)sender {
    [self backgroundColor];
    
}

-(void)backgroundColor{
    
    if (self.view.backgroundColor == [UIColor blueColor]){
        self.view.backgroundColor= [UIColor whiteColor];
        self.currentColor = @"white";
    }
    else{
        self.view.backgroundColor= [UIColor blueColor];
        self.currentColor = @"blue";
    }
}


- (IBAction)AboutMePressButton:(id)sender {
    NSLog(@"AboutMePressButton Pressed");
}

- (IBAction)EducationPressButton:(id)sender {
    NSLog(@"EducationPressButton Pressed");
    
}

- (IBAction)HobbysPressButton:(id)sender {
    NSLog(@"HobbysPressButton Pressed");
    
}


-(void)saveSettings{
    NSUserDefaults *saveSettings = [NSUserDefaults standardUserDefaults];
    [saveSettings setObject:self.currentColor forKey:@"bg"];
    [saveSettings synchronize];
}
@end
