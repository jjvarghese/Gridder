//
//  GRDAnimator.m
//  gridder
//
//  Created by sithrex on 6/04/2015.
//  Copyright (c) 2015 Joshua James. All rights reserved.
//

#import "GRDAnimator.h"
#import "GRDWizard.h"
#import "GRDSquare.h"

@implementation GRDAnimator

+ (void)animateMatch {
	for (GRDSquare *greaterSquare in [GRDWizard sharedInstance].greaterGridSquares) {
		if (greaterSquare.isActive) {
			[UIView animateWithDuration:0.2
								  delay:0.0
								options:UIViewAnimationOptionCurveEaseIn
							 animations:^{
								 greaterSquare.backgroundColor = [GRDWizard sharedInstance].gridTransitionColour;
							 }
							 completion:^(BOOL finished){
								 [UIView animateWithDuration:0.2
													   delay:0.0
													 options: UIViewAnimationOptionCurveEaseIn
												  animations:^{
													  greaterSquare.backgroundColor = [GRDWizard sharedInstance].gridColour;
												  }
												  completion:^(BOOL finished) {
													  
												  }];
							 }];
		} else {
			[UIView animateWithDuration:0.2
								  delay:0.0
								options:UIViewAnimationOptionCurveEaseIn
							 animations:^{
								 greaterSquare.alpha = 0.1f;
							 }
							 completion:^(BOOL finished){
								 [UIView animateWithDuration:0.2
													   delay:0.0
													 options: UIViewAnimationOptionCurveEaseIn
												  animations:^{
													  greaterSquare.alpha = 0.3f;
												  }
												  completion:^(BOOL finished) {
													  
												  }];
							 }];
		}
	}
	
	for (GRDSquare *lesserSquare in [GRDWizard sharedInstance].lesserGridSquares) {
		if (lesserSquare.isActive) {
			[UIView animateWithDuration:0.2
								  delay:0.0
								options: UIViewAnimationOptionCurveEaseIn
							 animations:^{
								 lesserSquare.backgroundColor = [GRDWizard sharedInstance].gridTransitionColour;
							 }
							 completion:^(BOOL finished) {
								 [UIView animateWithDuration:0.2
													   delay:0.0
													 options: UIViewAnimationOptionCurveEaseIn
												  animations:^{
													  lesserSquare.backgroundColor = [GRDWizard sharedInstance].gridColour;
												  }
												  completion:^(BOOL finished) {
												  }];
							 }];
		} else {
			[UIView animateWithDuration:0.2
								  delay:0.0
								options:UIViewAnimationOptionCurveEaseIn
							 animations:^{
								 lesserSquare.alpha = 0.1f;
							 }
							 completion:^(BOOL finished){
								 [UIView animateWithDuration:0.2
													   delay:0.0
													 options: UIViewAnimationOptionCurveEaseIn
												  animations:^{
													  lesserSquare.alpha = 0.3f;
												  }
												  completion:^(BOOL finished) {
													  
												  }];
							 }];
		}
		
	}
}

+ (void)animatePulse:(UIView *)transitionFader {
	transitionFader.backgroundColor = [UIColor redColor];
	transitionFader.hidden = NO;
	[UIView animateWithDuration:0.2
						  delay:0.0
						options:0
					 animations:^{
						 transitionFader.alpha = 1.0f;
					 } completion:^(BOOL finished) {
						 transitionFader.hidden = YES;
						 transitionFader.alpha = 0;
					 }
	 ];
}

@end