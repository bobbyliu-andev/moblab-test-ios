#import "ViewController.h"
#import <Crashlytics/Crashlytics.h>
#import <iOSSP008-Swift.h>

@interface ViewController ()
@property UILabel* label;
@property UITextView* tv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];

}

-(void)initUI {
    self.view.backgroundColor = UIColor.whiteColor;
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 100, 100, 30);
    [button setTitle:@"Crash" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _label = UILabel.new;
    _label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_label];
    [[_label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor]setActive:YES];
    [[_label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor]setActive:YES];
    _label.text = _data;
    
    CGFloat navHeight = ([UIApplication sharedApplication].statusBarFrame.size.height +
                         (self.navigationController.navigationBar.frame.size.height ?: 0.0));
    NSLog(@"Nav Height: %f", navHeight);
    
    _tv = UITextView.new;
    _tv.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_tv];
    [[_tv.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:navHeight]setActive:YES];
    [[_tv.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:0]setActive:YES];
    [[_tv.heightAnchor constraintEqualToConstant:120]setActive:YES];
    _tv.backgroundColor = UIColor.blueColor;
    
    [self testSwift];
}

-(void)dismissKeyboard {
    [_tv resignFirstResponder];
}

- (IBAction)crashButtonTapped:(id)sender {
    NSLog(@"Button clicked");
}

- (void)updateData {
    NSLog(@"Data updating...%@", _data);
    _label.text = _data;
}

- (void)testSwift {
    Utils* utils = Utils.new;
    [utils printMyName];
}

@end
