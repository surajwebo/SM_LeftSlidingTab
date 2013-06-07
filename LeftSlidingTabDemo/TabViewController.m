//
//  FirstViewController.m
//  SampleTabController
//
//

#import "TabViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface TabViewController ()

@end

@implementation TabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self enhanceUI :tabBtn1 :[UIColor lightGrayColor] :[UIColor blackColor]];
    [self enhanceUI :tabBtn2 :[UIColor lightGrayColor] :[UIColor yellowColor]];
    [self enhanceUI :tabBtn3 :[UIColor lightGrayColor] :[UIColor orangeColor]];
    [self enhanceUI :tabBtn4 :[UIColor lightGrayColor] :[UIColor brownColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tabBtn1Action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Tab 1 pressed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)tabBtn2Action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Tab 2 pressed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)tabBtn3Action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Tab 3 pressed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)tabBtn4Action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Tab 4 pressed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)tabSliderBtnAction:(id)sender {
    if (isTabViewSlided) 
        [self collapseMenu];
    else
        [self expandMenu];
}
-(void)expandMenu
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [viewForTabs setFrame:CGRectMake(self.view.bounds.origin.x, viewForTabs.bounds.origin.y,viewForTabs.bounds.size.width,viewForTabs.bounds.size.height)];
    [tabSliderBtn setTitle:@"<[" forState:UIControlStateNormal];
    [UIView commitAnimations];
    isTabViewSlided = YES;
    
}

-(void)collapseMenu
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [viewForTabs setFrame:CGRectMake(viewForTabs.bounds.origin.x- 215, viewForTabs.bounds.origin.y,viewForTabs.bounds.size.width,viewForTabs.bounds.size.height)];
    [tabSliderBtn setTitle:@"]>" forState:UIControlStateNormal];
    [UIView commitAnimations];
    isTabViewSlided = NO;
}

-(void)enhanceUI:(UIButton *)button :(UIColor *)color1 :(UIColor *)color2 {
    CAGradientLayer *layer1 = [CAGradientLayer layer];
    NSArray *colors = [NSArray arrayWithObjects:
                       (id)color1.CGColor,
                       (id)color2.CGColor,
                       nil];
    [layer1 setColors:colors];
    [layer1 setFrame:button.bounds];
    [button.layer insertSublayer:layer1 atIndex:0];
    button.clipsToBounds = YES;
    
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    [button.layer setBorderColor:[UIColor blackColor].CGColor];
    [button.layer setBorderWidth:2.0f];
    [button.layer setShadowColor:[UIColor whiteColor].CGColor];
    [button.layer setShadowOpacity:0.8];
    [button.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
    [button.layer setCornerRadius:5.0];
}
@end
