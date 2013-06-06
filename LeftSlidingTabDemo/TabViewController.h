//
//  FirstViewController.h
//  SampleTabController
//
//

#import <UIKit/UIKit.h>

@interface TabViewController : UIViewController {
    __weak IBOutlet UIView *viewForTabs;
    __weak IBOutlet UIButton *tabBtn1;
    __weak IBOutlet UIButton *tabBtn2;
    __weak IBOutlet UIButton *tabBtn3;
    __weak IBOutlet UIButton *tabBtn4;
    __weak IBOutlet UIButton *tabSliderBtn;
    BOOL isTabViewSlided;
}

- (IBAction)tabBtn1Action:(id)sender;
- (IBAction)tabBtn2Action:(id)sender;
- (IBAction)tabBtn3Action:(id)sender;
- (IBAction)tabBtn4Action:(id)sender;
- (IBAction)tabSliderBtnAction:(id)sender;






@end
