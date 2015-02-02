//
//  ObjectiveCViewController.h
//  ScoreKeeper
//
//  Created by Philip Ross on 1/18/15.
//  Copyright (c) 2015 CSSE Department. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjectiveCViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *roundLabel;

@property (weak, nonatomic) IBOutlet UITextField *p1Score;
@property (weak, nonatomic) IBOutlet UITextField *p2Score;
@property (weak, nonatomic) IBOutlet UITextField *p3Score;
@property (weak, nonatomic) IBOutlet UITextField *p4Score;

@property (weak, nonatomic) IBOutlet UITextView *p1Scores;
@property (weak, nonatomic) IBOutlet UITextView *p2Scores;
@property (weak, nonatomic) IBOutlet UITextView *p3Scores;
@property (weak, nonatomic) IBOutlet UITextView *p4Scores;

- (IBAction)pressedNewGame:(id)sender;
- (IBAction)pressedNewRound:(id)sender;

@property (nonatomic) NSMutableArray* scores;
@property (nonatomic) NSMutableArray* roundScores;
@property (nonatomic) NSMutableArray* scoresTextFields;
@property (nonatomic) int roundNumber;

@property (nonatomic) int player1Score;
@property (nonatomic) int player2Score;
@property (nonatomic) int player3Score;
@property (nonatomic) int player4Score;
@end
