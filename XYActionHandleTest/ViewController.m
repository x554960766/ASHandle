//
//  ViewController.m
//  XYActionHandleTest
//
//  Created by xuyi on 2018/12/3.
//  Copyright © 2018年 xuyi. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerB.h"

@interface ViewController ()
@property (nonatomic,strong) UILabel * lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _actionHandle = [[ASHandle alloc]initWithDelegate:self];
    [self.view addSubview:self.lable];
    [self.view addSubview:self.button];

    [ActionStageInstance() watchForPath:@"LableText" watcher:self];
}
- (UILabel *)lable {
    if (!_lable) {
        _lable =[[UILabel alloc]init];
        _lable.frame = CGRectMake(self.view.frame.size.width / 2 - 40, self.view.frame.size.height / 2 + 40, 80, 40);
        _lable.textColor = [UIColor blackColor];
    }
    return _lable;
}

- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc]init];
        _button.frame = CGRectMake(self.view.frame.size.width / 2 - 40, self.view.frame.size.height / 2 - 20, 80, 40);
        [_button setTitle:@"按钮" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (void)buttonAction {
    [self presentViewController:[ViewControllerB new] animated:YES completion:nil];
}

- (void)actionStageResourceDispatched:(NSString *)path resource:(id)resource arguments:(id)arguments {
    if ([path isEqualToString:@"LableText"]) {
        if ([resource isKindOfClass:[NSString class]]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.lable.text = resource;
            });
            NSLog(@"resource == %@",resource);
        }
    }
}





@end
