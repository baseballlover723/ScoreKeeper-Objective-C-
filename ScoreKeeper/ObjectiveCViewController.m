//
//  ObjectiveCViewController.m
//  ScoreKeeper
//
//  Created by Philip Ross on 1/18/15.
//  Copyright (c) 2015 CSSE Department. All rights reserved.
//

#import "ObjectiveCViewController.h"

@interface ObjectiveCViewController ()

@end

@implementation ObjectiveCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // arrays are difficult to use, easier to just mention each one by name
    self.scoresTextFields = [NSMutableArray arrayWithObjects: @[self.p1Scores, self.p2Scores, self.p3Scores, self.p4Scores], nil];
    
    self.roundScores = [NSMutableArray arrayWithObjects: @[self.p1Score, self.p2Score, self.p3Score, self.p4Score], nil];
//    self.scores = [NSMutableArray arrayWithObject: @[self.player1Score, self.player2Score, self.player3Score, self.player4Score]];
    [self resetGame];
}

- (void)resetGame {
    self.roundNumber = 1;
    self.roundLabel.text = [NSString stringWithFormat: @"Round %d", self.roundNumber];
    
//    for (int k=0; k<4; k++) {
//        self.scores[k] = @0;
//    }
    // couldn't figure out arrays
    // sets each players current round info to nothing
    self.p1Score.text = @"";
    self.p2Score.text = @"";
    self.p3Score.text = @"";
    self.p4Score.text = @"";
    
    // sets each players list of scores to nothing
    self.p1Scores.text = @"";
    self.p2Scores.text = @"";
    self.p3Scores.text = @"";
    self.p4Scores.text = @"";
    
    //sets the players score to 0
    self.player1Score = 0;
    self.player2Score = 0;
    self.player3Score = 0;
    self.player4Score = 0;
    
    NSLog(@"start reset game");
   

}


- (IBAction)pressedNewRound:(id)sender {
    // for loops would make this easier to read, but i can't seem to implement it right
//    for (int k=0; k<4; k++) {
//        UITextField* textField = self.roundScores[k];
//        NSString* text = textField.text;
//        int textAsInt = [text intValue];
//        NSLog(@"current score %d = %d", k, textAsInt);
//    }
    self.roundNumber++;
    self.roundLabel.text = [NSString stringWithFormat: @"Round %d", self.roundNumber];
    
    //player 1
    NSString* text = self.p1Score.text;
    int textAsInt = [text intValue];
    self.player1Score += textAsInt;
    
    NSString* oldText = self.p1Scores.text;
    self.p1Scores.text = [NSString stringWithFormat: @"%@\n%d", oldText, self.player1Score];
    
    //player 2
    text = self.p2Score.text;
    textAsInt = [text intValue];
    self.player2Score += textAsInt;
    
    oldText = self.p2Scores.text;
    self.p2Scores.text = [NSString stringWithFormat: @"%@\n%d", oldText, self.player2Score];
    
    //player 3
    text = self.p3Score.text;
    textAsInt = [text intValue];
    self.player3Score += textAsInt;
    
    oldText = self.p3Scores.text;
    self.p3Scores.text = [NSString stringWithFormat: @"%@\n%d", oldText, self.player3Score];
    
    //player 4
    text = self.p4Score.text;
    textAsInt = [text intValue];
    self.player4Score += textAsInt;
    
    oldText = self.p4Scores.text;
    self.p4Scores.text = [NSString stringWithFormat: @"%@\n%d", oldText, self.player4Score];
    
    
    [self.view endEditing: YES];
    
    
}



- (IBAction)pressedNewGame:(id)sender {
    [self resetGame];
//    self.scores = @[@0,@0,@0,@0];
//    self.scores[1] = @3;
//    self.p1Score.text = 0;
//    self.p2Score.text = 0;
//    self.p3Score.text = 0;
//    self.p4Score.text = 0;
//    
//    self.p1Scores.text = @"";
//    self.p2Scores.text = @"";
//    self.p3Scores.text = @"";
//    self.p4Scores.text = @"";
}

- (void)updateView {
    NSLog(self.scores);
}
@end
