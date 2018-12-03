//
//  ViewController.h
//  XYActionHandleTest
//
//  Created by xuyi on 2018/12/3.
//  Copyright © 2018年 xuyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASWatcher.h"
#import "ActionStage.h"

@interface ViewController : UIViewController<ASWatcher>

@property (nonatomic,strong) ASHandle * actionHandle;
@property (nonatomic,strong) UIButton * button;

@end

