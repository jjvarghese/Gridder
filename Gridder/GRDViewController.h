//
//  GRDViewController.h
//  Gridder
//
//  Created by Joshua James on 10/07/13.
//  Copyright (c) 2013 Joshua James. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GRDSquare.h"
#import "GRDAppDelegate.h"
#import "GRDWizard.h"
#import "GRDGlassSquare.h"

@class GRDAppDelegate;

@interface GRDViewController : UIViewController {
	NSInteger glassLevel;
	GRDAppDelegate *delegate;
	UIProgressView *pulseBar;
}
@property (strong, nonatomic) IBOutlet UIView *gridPrime;

@property (strong, nonatomic) IBOutlet GRDSquare *grd1;
@property (strong, nonatomic) IBOutlet GRDSquare *grd2;
@property (strong, nonatomic) IBOutlet GRDSquare *grd3;
@property (strong, nonatomic) IBOutlet GRDSquare *grd4;
@property (strong, nonatomic) IBOutlet GRDSquare *grd5;
@property (strong, nonatomic) IBOutlet GRDSquare *grd6;
@property (strong, nonatomic) IBOutlet GRDSquare *grd7;
@property (strong, nonatomic) IBOutlet GRDSquare *grd8;
@property (strong, nonatomic) IBOutlet GRDSquare *grd9;
@property (strong, nonatomic) IBOutlet GRDSquare *grd10;
@property (strong, nonatomic) IBOutlet GRDSquare *grd11;
@property (strong, nonatomic) IBOutlet GRDSquare *grd12;
@property (strong, nonatomic) IBOutlet GRDSquare *grd13;
@property (strong, nonatomic) IBOutlet GRDSquare *grd14;
@property (strong, nonatomic) IBOutlet GRDSquare *grd15;
@property (strong, nonatomic) IBOutlet GRDSquare *grd16;

@property (strong, nonatomic) IBOutlet UIButton *pauseMenuButton;
@property (strong, nonatomic) IBOutlet UIButton *soundOffButton;
@property (strong, nonatomic) IBOutlet UIButton *pauseButton;
@property (strong, nonatomic) IBOutlet UIView *topSquareHolder;
@property (strong, nonatomic) IBOutlet UIView *topComponentsHolder;

@property (nonatomic, strong) UIProgressView *progressView;

@property (nonatomic, strong) NSMutableArray *lesserSquares;
@property (nonatomic, strong) NSMutableArray *primeSquares;
@property (nonatomic, strong) NSMutableArray *glassSquares;
@property (strong, nonatomic) UIView *transitionView;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *livesDisplay;
@property (nonatomic) NSInteger onTheEdgeStreak;

- (void)squareTouched:(UIGestureRecognizer *)sender;
- (void)gridderPulse:(BOOL)successful;

- (IBAction)returnToMenu:(id)sender;
- (IBAction)soundButtonTouched:(id)sender;
- (IBAction)pauseButtonTouched:(id)sender;
- (IBAction)touchSquare:(id)sender;
- (void)checkForAchievements;

@end
