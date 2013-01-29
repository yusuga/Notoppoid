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

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)notoru:(id)sender
{

    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [vc setInitialText:[NSString stringWithFormat:@"%@も%@から%@は%@たる%@の%@で%@中 #のとっぽいど",
                            self.whenTextField.text.length ? self.whenTextField.text : self.whenTextField.placeholder,
                            self.fastSlowSegmentedControl.selectedSegmentIndex ? @"遅く" : @"早く",
                            self.areaTextField.text.length ? self.areaTextField.text : self.areaTextField.placeholder,
                            self.whereAreaTextField.text.length ? self.whereAreaTextField.text : self.whereAreaTextField.placeholder,
                            self.detailAreaTextField.text.length ? self.detailAreaTextField.text : self.detailAreaTextField.placeholder,
                            self.exactAreaTextFiled.text.length ? self.exactAreaTextFiled.text : self.exactAreaTextFiled.placeholder,
                            self.doingTextField.text.length ? self.doingTextField.text : self.doingTextField.placeholder]];
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (IBAction)deleteAllText
{
    NSArray *arr = @[self.whenTextField, self.areaTextField, self.whereAreaTextField, self.detailAreaTextField, self.exactAreaTextFiled, self.doingTextField];
    for (UITextField *tf in arr) {
        tf.text = nil;
    }
}

@end
