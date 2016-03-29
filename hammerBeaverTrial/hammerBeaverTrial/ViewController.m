//
//  ViewController.m
//  hammerBeaverTrial
//
//  Created by Akshay Yadav on 12/20/14.
//  Copyright (c) 2014 Akshay Yadav. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    nextIncremental = [NSNumber numberWithInt:13];
    currentNumber = [NSNumber numberWithInt:1];
    
    chancesLeft = [NSNumber numberWithInt:5];
    TimeLeft = [NSNumber numberWithInt:15];
    
    score = [NSNumber numberWithInt:0];
    
    [self.chancesLeftLabel setText:[chancesLeft stringValue]];
    
    currentMatrix = [[NSMutableArray alloc]initWithObjects:@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,nil];
    
    [self arrangeButtons];
    
    [NSTimer scheduledTimerWithTimeInterval:0.5
                                     target:self
                                   selector:@selector(timerCalculator)
                                   userInfo:nil
                                    repeats:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:2
                                     target:self
                                   selector:@selector(arrangeButtons)
                                   userInfo:nil
                                    repeats:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:0.3
                                     target:self
                                   selector:@selector(animateFunction1)
                                   userInfo:nil
                                    repeats:YES];
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.5
                                     target:self
                                   selector:@selector(animateFunction2)
                                   userInfo:nil
                                    repeats:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:0.5
                                     target:self
                                   selector:@selector(animateFunction3)
                                   userInfo:nil
                                    repeats:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:0.6
                                     target:self
                                   selector:@selector(animateFunction4)
                                   userInfo:nil
                                    repeats:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gameOverView{
    
    [self.actualScore setText:self.scoreBoard.text];
    
    [self.whiteBackground setHidden:NO];
    [self.randomnumberbg setHidden:NO];
    [self.gameLabel setHidden:NO];
    [self.overLabel setHidden:NO];
    [self.yourScoreLabel setHidden:NO];
    [self.actualScore setHidden:NO];
    [self.playAgainButton setHidden:NO];
    
}

-(void)resetTimer{
    
    TimeLeft = [NSNumber numberWithInt:15];
    [self.timerTime setText:[TimeLeft stringValue]];
    
}

-(void)timerCalculator{
    
    
    int oldTime = [TimeLeft intValue];
    int newTime = oldTime - 1;
    
    TimeLeft = [NSNumber numberWithInt:newTime];
    
    if (newTime == 0) {
        
        [self gameOverView];
        
    }
    
    [self.timerTime setText:[TimeLeft stringValue]];
    
}



-(void)maintainChancesLeft{
    
    if (chancesLeft == [NSNumber numberWithInt:1]) {
        
        [self gameOverView];
        
    }
    else{
        int oldChanceLeftint = [chancesLeft intValue];
        int newChanceLeft = oldChanceLeftint - 1;
        chancesLeft = [NSNumber numberWithInt:newChanceLeft];
        [self.chancesLeftLabel setText:[chancesLeft stringValue]];
        
    }
}


-(void)calculateScore{
    
    int scoreInt = [score intValue];
    
    int timerInt = [TimeLeft intValue];
    
    score = [NSNumber numberWithInt:(scoreInt + timerInt*2)];
    
    [self.scoreBoard setText:[score stringValue]];
    
}


-(void)animateFunction1
{
    NSArray *arrayOfTileColor = @[@"blue.png",@"purple.png",@"orange.png",@"green.png",@"yellow.png",@"cyan.png",@"redtile.png"];
    
    NSInteger randomIndexa1 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColora1 = [arrayOfTileColor objectAtIndex:randomIndexa1];
    
    [self.a1 setImage:[UIImage imageNamed:chosenTileColora1]];
   
    NSInteger randomIndexa4 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColora4 = [arrayOfTileColor objectAtIndex:randomIndexa4];
    
    [self.a4 setImage:[UIImage imageNamed:chosenTileColora4]];


    NSInteger randomIndexc1 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorc1 = [arrayOfTileColor objectAtIndex:randomIndexc1];
    
    [self.c1 setImage:[UIImage imageNamed:chosenTileColorc1]];
    
    NSInteger randomIndexc4 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorc4 = [arrayOfTileColor objectAtIndex:randomIndexc4];
    
    [self.c4 setImage:[UIImage imageNamed:chosenTileColorc4]];
  
}

-(void)animateFunction2
{
    NSArray *arrayOfTileColor = @[@"blue.png",@"purple.png",@"orange.png",@"green.png",@"yellow.png",@"cyan.png",@"redtile.png"];
    
    NSInteger randomIndexa3 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColora3 = [arrayOfTileColor objectAtIndex:randomIndexa3];
    
    [self.a3 setImage:[UIImage imageNamed:chosenTileColora3]];
    
    NSInteger randomIndexb2 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorb2 = [arrayOfTileColor objectAtIndex:randomIndexb2];
    
    [self.b2 setImage:[UIImage imageNamed:chosenTileColorb2]];
    
    
    NSInteger randomIndexc3 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorc3 = [arrayOfTileColor objectAtIndex:randomIndexc3];
    
    [self.c3 setImage:[UIImage imageNamed:chosenTileColorc3]];
    
}

-(void)animateFunction3
{
    NSArray *arrayOfTileColor = @[@"blue.png",@"purple.png",@"orange.png",@"green.png",@"yellow.png",@"cyan.png",@"redtile.png"];
    
    NSInteger randomIndexa2 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColora2 = [arrayOfTileColor objectAtIndex:randomIndexa2];
    
    [self.a2 setImage:[UIImage imageNamed:chosenTileColora2]];
    
    NSInteger randomIndexb3 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorb3 = [arrayOfTileColor objectAtIndex:randomIndexb3];
    
    [self.b3 setImage:[UIImage imageNamed:chosenTileColorb3]];
    
    
    NSInteger randomIndexc2 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorc2 = [arrayOfTileColor objectAtIndex:randomIndexc2];
    
    [self.c2 setImage:[UIImage imageNamed:chosenTileColorc2]];
    
}

-(void)animateFunction4
{
    NSArray *arrayOfTileColor = @[@"blue.png",@"purple.png",@"orange.png",@"green.png",@"yellow.png",@"cyan.png",@"redtile.png"];
    
    NSInteger randomIndexb1 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorb1 = [arrayOfTileColor objectAtIndex:randomIndexb1];
    
    [self.b1 setImage:[UIImage imageNamed:chosenTileColorb1]];
    
    NSInteger randomIndexb4 = arc4random()%[arrayOfTileColor count];
    NSString *chosenTileColorb4 = [arrayOfTileColor objectAtIndex:randomIndexb4];
    
    [self.b4 setImage:[UIImage imageNamed:chosenTileColorb4]];
}


-(void)arrangeButtons{
    
    NSMutableArray *localCopyOfCurrentMatrix = [[NSMutableArray alloc] initWithArray:currentMatrix];
    
    NSInteger randomNumberIndexa1 = arc4random()%[localCopyOfCurrentMatrix count];
    NSString *randomNumbera1 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexa1] stringValue];

    
    [self.buttona1 setTitle:randomNumbera1 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexa1];
    
    
    
    
    NSInteger randomNumberIndexa2 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumbera2 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexa2] stringValue];
    
    [self.buttona2 setTitle:randomNumbera2 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexa2];
    
    
    
    NSInteger randomNumberIndexa3 = arc4random()%[localCopyOfCurrentMatrix count];
    NSString *randomNumbera3 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexa3] stringValue];
    
    
    [self.buttona3 setTitle:randomNumbera3 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexa3];
    
    
    
    NSInteger randomNumberIndexa4 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumbera4 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexa4] stringValue];
    
    
    [self.buttona4 setTitle:randomNumbera4 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexa4];
    
    
    NSInteger randomNumberIndexb1 = arc4random()%[localCopyOfCurrentMatrix count];
    NSString *randomNumberb1 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexb1] stringValue];
    
    
    [self.buttonb1 setTitle:randomNumberb1 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexb1];
    
    
    
    NSInteger randomNumberIndexb2 = arc4random()%[localCopyOfCurrentMatrix count];
    NSString *randomNumberb2 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexb2] stringValue];
    
    
    [self.buttonb2 setTitle:randomNumberb2 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexb2];
    
    
    NSInteger randomNumberIndexb3 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumberb3 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexb3] stringValue];
    
    
    [self.buttonb3 setTitle:randomNumberb3 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexb3];
    
    
    NSInteger randomNumberIndexb4 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumberb4 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexb4] stringValue];
    
    
    [self.buttonb4 setTitle:randomNumberb4 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexb4];
    
    
    NSInteger randomNumberIndexc1 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumberc1 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexc1] stringValue];
    
    
    [self.buttonc1 setTitle:randomNumberc1 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexc1];
    
    
    
    NSInteger randomNumberIndexc2 = arc4random()%[localCopyOfCurrentMatrix count];
   NSString *randomNumberc2 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexc2] stringValue];
    
    
    [self.buttonc2 setTitle:randomNumberc2 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexc2];
    
    
    NSInteger randomNumberIndexc3 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumberc3 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexc3] stringValue];
    
    
    [self.buttonc3 setTitle:randomNumberc3 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexc3];
    
    
    NSInteger randomNumberIndexc4 = arc4random()%[localCopyOfCurrentMatrix count];
     NSString *randomNumberc4 = [[localCopyOfCurrentMatrix objectAtIndex:randomNumberIndexc4] stringValue];
    
    
    [self.buttonc4 setTitle:randomNumberc4 forState:UIControlStateNormal];
    
    [localCopyOfCurrentMatrix removeObjectAtIndex:randomNumberIndexc4];
    
}





- (IBAction)actiona1:(id)sender {
    
    if ([self.buttona1.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.a1 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.a1 setImage:wrongImage];
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actiona2:(id)sender {
    
    if ([self.buttona2.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.a2 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.a2 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actiona3:(id)sender {
    
    if ([self.buttona3.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.a3 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.a3 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}
- (IBAction)actiona4:(id)sender {
    
    if ([self.buttona4.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.a4 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.a4 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actionb1:(id)sender {
    
    if ([self.buttonb1.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.b1 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.b1 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actionb2:(id)sender {
    
    if ([self.buttonb2.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.b2 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.b2 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}
- (IBAction)actionc3:(id)sender {
    
    if ([self.buttonc3.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.c3 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.c3 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actionc4:(id)sender {
    
    if ([self.buttonc4.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.c4 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.c4 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actionb3:(id)sender {
    
    if ([self.buttonb3.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.b3 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.b3 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}
- (IBAction)actionb4:(id)sender {
    
    if ([self.buttonb4.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.b4 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.b4 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

- (IBAction)actionc1:(id)sender {
    
    if ([self.buttonc1.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.c1 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.c1 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
    
}

- (IBAction)actionc2:(id)sender {
    
    if ([self.buttonc2.titleLabel.text isEqualToString: [currentNumber stringValue]]) {
        
        UIImage *correctImage = [UIImage imageNamed:@"correctbg.png"];
        
        [self.c2 setImage:correctImage];
        
        
        [currentMatrix removeObject:currentNumber];
        [currentMatrix addObject:nextIncremental];
        
        int currentNumberValue = [currentNumber intValue];
        currentNumber = [NSNumber numberWithInt:currentNumberValue + 1];
        
        int nextIncrementalValue = [nextIncremental intValue];
        nextIncremental = [NSNumber numberWithInt:nextIncrementalValue + 1];
        
        [self arrangeButtons];
        
        [self calculateScore];
        [self resetTimer];
        
        
    }
    else{
        UIImage *wrongImage = [UIImage imageNamed:@"wrongbg.png"];
        
        [self.c2 setImage:wrongImage];
    
        
        [self maintainChancesLeft];
        
    }
    
}

@end
