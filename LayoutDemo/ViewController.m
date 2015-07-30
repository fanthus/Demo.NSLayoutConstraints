//
//  ViewController.m
//  LayoutDemo
//
//  Created by xiushan.fan on 30/7/15.
//

#import "ViewController.h"

@interface ViewController () {
    UILabel *tLabel;
    UILabel *fLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    tLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    tLabel.backgroundColor = [UIColor redColor];
    tLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:tLabel];
    
    fLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    fLabel.backgroundColor = [UIColor purpleColor];
    fLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:fLabel];
    
}

- (void)viewWillLayoutSubviews {
    NSLayoutConstraint *tCons = [NSLayoutConstraint constraintWithItem:tLabel
                                                             attribute:NSLayoutAttributeRight
                                                             relatedBy:NSLayoutRelationEqual toItem:self.view
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1
                                                              constant:-30];
    

    NSLayoutConstraint *widthCons = [NSLayoutConstraint constraintWithItem:tLabel
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:nil
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:1
                                                                  constant:50];
    NSLayoutConstraint *heightCons = [NSLayoutConstraint constraintWithItem:tLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:1
                                                                   constant:50];
    [self.view addConstraints:@[tCons,widthCons,heightCons]];
    
    NSLayoutConstraint *fCons = [NSLayoutConstraint constraintWithItem:fLabel
                                                             attribute:NSLayoutAttributeRight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:tLabel
                                                             attribute:NSLayoutAttributeLeft
                                                            multiplier:1
                                                              constant:-50];
    //fLabel.right = tLabel.left*1 - 50.
    
    NSLayoutConstraint *fWidthCons = [NSLayoutConstraint constraintWithItem:fLabel
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:tLabel
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:2
                                                                   constant:0];
    //fLabel.width = fLabel.width*2 + 0
    NSLayoutConstraint *fHeightCons = [NSLayoutConstraint constraintWithItem:fLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:2
                                                                   constant:50];
    //fLabel.right = nil*2 + 50.
    [self.view addConstraints:@[fCons,fHeightCons,fWidthCons]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
