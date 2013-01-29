//
//  ViewController.m
//  Notoppoid
//
//  Created by Yu Sugawara on 2013/01/29.
//  Copyright (c) 2013年 Yu Sugawara. All rights reserved.
//

#import <Social/Social.h>
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *whenTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *fastSlowSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *areaTextField;
@property (weak, nonatomic) IBOutlet UITextField *whereAreaTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailAreaTextField;
@property (weak, nonatomic) IBOutlet UITextField *exactAreaTextFiled;
@property (weak, nonatomic) IBOutlet UITextField *doingTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)notoru:(id)sender
{

    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [vc setInitialText:[NSString stringWithFormat:@"%@も%@から%@は%@たる%@の%@で%@中 #のとっぽいど", self.whenTextField.text, self.fastSlowSegmentedControl.selectedSegmentIndex ? @"早く" : @"遅く", self.areaTextField.text, self.whereAreaTextField.text, self.detailAreaTextField.text, self.exactAreaTextFiled.text, self.doingTextField.text]];
        [self presentViewController:vc animated:YES completion:nil];
    }
}


@end
