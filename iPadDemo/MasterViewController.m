//
//  MasterViewController.m
//  iPadDemo
//
//  Created by YYKit on 2017/9/8.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "MasterViewController.h"
@interface MasterViewController ()
@property (nonatomic,strong) UINavigationController *navigationControllerDetails;
@property (nonatomic,copy) NSArray *dataSource;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.splitViewController.viewControllers);
    self.dataSource = self.splitViewController.viewControllers;
}

- (IBAction)changeViewController:(id)sender {
    UIButton *btn = (UIButton *)sender;
    [self.splitViewController showViewController:self.dataSource[btn.tag] sender:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
