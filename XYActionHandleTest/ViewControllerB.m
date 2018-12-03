//
//  ViewControllerB.m
//  XYActionHandleTest
//
//  Created by xuyi on 2018/12/3.
//  Copyright © 2018年 xuyi. All rights reserved.
//

#import "ViewControllerB.h"
#import "ActionStage.h"
@interface ViewControllerB ()
@property (nonatomic,strong) UIButton * button;
@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.button];
    self.view.backgroundColor = [UIColor whiteColor];
}


- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc]init];
        _button.frame = CGRectMake(self.view.frame.size.width / 2 - 40, self.view.frame.size.height / 2 - 20, 80, 40);
        [_button setTitle:@"返回" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (void)buttonAction {
    [ActionStageInstance() dispatchResource:@"LableText" resource:@"哈哈"];
    [self dismissViewControllerAnimated:YES completion:nil];
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
