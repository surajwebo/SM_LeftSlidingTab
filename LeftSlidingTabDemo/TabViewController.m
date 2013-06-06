//
//  FirstViewController.m
//  SampleTabController
//
//

#import "TabViewController.h"

@interface TabViewController ()
- (IBAction)goBack:(id)sender;
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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBack:(id)sender
{
    [self.tabBarController dismissViewControllerAnimated:NO completion:NULL];
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
    [tabSliderBtn setTitle:@"<<" forState:UIControlStateNormal];
    [UIView commitAnimations];
    isTabViewSlided = YES;
    
}

-(void)collapseMenu
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [viewForTabs setFrame:CGRectMake(viewForTabs.bounds.origin.x- 215, viewForTabs.bounds.origin.y,viewForTabs.bounds.size.width,viewForTabs.bounds.size.height)];
    [tabSliderBtn setTitle:@">>" forState:UIControlStateNormal];
    [UIView commitAnimations];
    isTabViewSlided = NO;
    
}
@end
