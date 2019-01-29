#import "ViewController.h"
#import <Crashlytics/Crashlytics.h>

@interface ViewController ()
@property UILabel* label;
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
}


- (IBAction)crashButtonTapped:(id)sender {
    NSLog(@"Button clicked");
}

- (void)updateData {
    NSLog(@"Data updating...%@", _data);
    _label.text = _data;
}

@end
