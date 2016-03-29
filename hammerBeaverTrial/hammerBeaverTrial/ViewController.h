//
//  ViewController.h
//  hammerBeaverTrial
//
//  Created by Akshay Yadav on 12/20/14.
//  Copyright (c) 2014 Akshay Yadav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSMutableArray *currentMatrix;
    NSNumber *currentNumber;
    NSNumber *nextIncremental;
    
    NSNumber *chancesLeft;
    
    NSNumber *score;
    
    NSNumber *TimeLeft;

    
}
@property (weak, nonatomic) IBOutlet UILabel *scoreBoard;

@property (weak, nonatomic) IBOutlet UILabel *timerTime;

@property (weak, nonatomic) IBOutlet UILabel *chancesLeftLabel;
@property (weak, nonatomic) IBOutlet UIImageView *whiteBackground;
@property (weak, nonatomic) IBOutlet UIImageView *randomnumberbg;
@property (weak, nonatomic) IBOutlet UILabel *gameLabel;
@property (weak, nonatomic) IBOutlet UILabel *overLabel;
@property (weak, nonatomic) IBOutlet UILabel *yourScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *actualScore;
@property (weak, nonatomic) IBOutlet UIButton *playAgainButton;



@property (weak, nonatomic) IBOutlet UIImageView *a1;
@property (weak, nonatomic) IBOutlet UIImageView *a2;
@property (weak, nonatomic) IBOutlet UIImageView *a3;
@property (weak, nonatomic) IBOutlet UIImageView *a4;

@property (weak, nonatomic) IBOutlet UIImageView *b1;
@property (weak, nonatomic) IBOutlet UIImageView *b2;
@property (weak, nonatomic) IBOutlet UIImageView *b3;
@property (weak, nonatomic) IBOutlet UIImageView *b4;

@property (weak, nonatomic) IBOutlet UIImageView *c1;
@property (weak, nonatomic) IBOutlet UIImageView *c2;
@property (weak, nonatomic) IBOutlet UIImageView *c3;
@property (weak, nonatomic) IBOutlet UIImageView *c4;


@property (weak, nonatomic) IBOutlet UIButton *buttona1;
@property (weak, nonatomic) IBOutlet UIButton *buttona2;
@property (weak, nonatomic) IBOutlet UIButton *buttona3;
@property (weak, nonatomic) IBOutlet UIButton *buttona4;

@property (weak, nonatomic) IBOutlet UIButton *buttonb1;
@property (weak, nonatomic) IBOutlet UIButton *buttonb2;
@property (weak, nonatomic) IBOutlet UIButton *buttonb3;
@property (weak, nonatomic) IBOutlet UIButton *buttonb4;

@property (weak, nonatomic) IBOutlet UIButton *buttonc1;
@property (weak, nonatomic) IBOutlet UIButton *buttonc2;
@property (weak, nonatomic) IBOutlet UIButton *buttonc3;
@property (weak, nonatomic) IBOutlet UIButton *buttonc4;


- (IBAction)actiona1:(id)sender;
- (IBAction)actiona2:(id)sender;
- (IBAction)actiona3:(id)sender;
- (IBAction)actiona4:(id)sender;

- (IBAction)actionb1:(id)sender;
- (IBAction)actionb2:(id)sender;
- (IBAction)actionb3:(id)sender;
- (IBAction)actionb4:(id)sender;

- (IBAction)actionc1:(id)sender;
- (IBAction)actionc2:(id)sender;
- (IBAction)actionc3:(id)sender;
- (IBAction)actionc4:(id)sender;

@end

