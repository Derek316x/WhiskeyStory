//
//  ViewController.m
//  WhiskeyStory
//
//  Created by Z on 6/7/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "ViewController.h"

//do we want to party?
BOOL whiskeyMood;

BOOL shots;
BOOL neat;
BOOL cocktail;

//shot bools
BOOL wasted;
BOOL buzzed;

//cocktail bools
BOOL shaken;
BOOL stirred;

// ints for switch case statements
int drinkType;
int flavor;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *currentQuestion;


@end

@implementation ViewController
- (IBAction)moodYES:(id)sender {
    
    whiskeyMood = YES;
    
    if (whiskeyMood) {
        
            //user chooses shot, neat, or cocktail
            self.currentQuestion.text = @"Select your drink type.";
        
        switch (drinkType) {
                
            case 1: //shots
                shots = YES;
                if (wasted) {
                    //SHOTS SHOTS SHOTS
                }
                else {
                    // ...shots
                }
                
                break;
            case 2: //neat
                neat = YES;
                
                switch (flavor) {
                    case 1: //sweet
                        break;
                    case 2: //savory
                        break;
                    case 3: //smoky
                        break;
                    case 4: //spicy
                        break;
                    case 5: //overproof
                        break;
                }
                break;
            case 3: //cocktail
                cocktail = YES;
                if (shaken) {
                    //shake drink
                }
                else {
                    //stirred
                }
                break;
        }
        
    }
    
}
- (IBAction)moodNO:(id)sender {
    
    //no whiskey tonight
    whiskeyMood = NO;
    self.currentQuestion.text = @"Don't order whiskey.";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.currentQuestion.text = @"Are you in the mood for whiskey?";
    
}


@end
