//
//  ViewController.m
//  WhiskeyStory
//
//  Created by Z on 6/7/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "ViewController.h"

//do we want to party?
BOOL whiskeyMood = NO;

BOOL shots = NO;
BOOL neat = NO;
BOOL cocktail =NO;

//shot bools
BOOL wasted = NO;
BOOL buzzed = NO;

//cocktail bools
BOOL shaken = NO;
BOOL stirred = NO;

// ints for switch case statements
int drinkType = 0;
int flavor = 0;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *currentQuestion;
@property (weak, nonatomic) IBOutlet UIButton *moodYES;
@property (weak, nonatomic) IBOutlet UIButton *moodNO;
@property (weak, nonatomic) IBOutlet UIButton *neatButton;
@property (weak, nonatomic) IBOutlet UIButton *shotButton;
@property (weak, nonatomic) IBOutlet UIButton *cocktailButton;
@property (weak, nonatomic) IBOutlet UIButton *sweetButton;
@property (weak, nonatomic) IBOutlet UIButton *savoryButton;
@property (weak, nonatomic) IBOutlet UIButton *smokyButton;
@property (weak, nonatomic) IBOutlet UIButton *spicyButton;
@property (weak, nonatomic) IBOutlet UIButton *overproofButton;
@property (weak, nonatomic) IBOutlet UIImageView *whiskeyImage;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self hideDrinkType];
    [self hideFlavors];
    
    self.currentQuestion.text = @"Are you in the mood for whiskey?";
    
}

- (IBAction)moodYES:(id)sender {
    
    //hide YES/NO
    [self hideYesNo];
    
    whiskeyMood = YES;
    if (whiskeyMood) {
        
            //user chooses shot, neat, or cocktail
            self.currentQuestion.text = @"Select your drink type.";
        
        [self showDrinkType];
        
        switch (drinkType) {
                
            case 1: //shots
                
                
                if (wasted) {
                    //SHOTS SHOTS SHOTS
                }
                else {
                    // ...shots
                }
                
                break;
            case 2: //neat
                
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
                [self hideDrinkType];
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
    
    //hide YES/NO
    [self hideYesNo];
    
    //no whiskey tonight
    whiskeyMood = NO;
    self.currentQuestion.text = @"Don't order whiskey.";
}


//sets drink types when button is pressed
- (IBAction)shotButton:(id)sender {
    drinkType=1;
    shots = YES;
    [self hideDrinkType];
    self.currentQuestion.text = @"How hard are you going tonight?.";
    //show shot options
}

- (IBAction)neatButton:(id)sender {
    drinkType=2;
    neat = YES;
    
    [self hideDrinkType];
    [self showFlavors];
    
    self.currentQuestion.text = @"Which flavor would you like?";
    
}
- (IBAction)cocktailButton:(id)sender {
    drinkType=3;
}

//methods when flavor is chosen
- (IBAction)sweetButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"Four Roses \n Maker's Mark \n Jameson 18";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"sweetimage.png"];
    [self.view addSubview:self.whiskeyImage];
    
}
- (IBAction)savoryButton:(id)sender {
}
- (IBAction)smokyButton:(id)sender {
}
- (IBAction)spicyButton:(id)sender {
}
- (IBAction)overproofButton:(id)sender {
}


//methods to show and hide buttons
-(void)hideYesNo {
    self.moodNO.hidden=YES;
    self.moodYES.hidden=YES;
}

-(void)hideDrinkType {
    self.neatButton.hidden=YES;
    self.shotButton.hidden=YES;
    self.cocktailButton.hidden=YES;
}

-(void)showDrinkType {
    self.neatButton.hidden=NO;
    self.shotButton.hidden=NO;
    self.cocktailButton.hidden=NO;
}

-(void)showFlavors {
    self.sweetButton.hidden=NO;
    self.savoryButton.hidden=NO;
    self.smokyButton.hidden=NO;
    self.spicyButton.hidden=NO;
    self.overproofButton.hidden=NO;
    
}

-(void)hideFlavors {
    self.sweetButton.hidden=YES;
    self.savoryButton.hidden=YES;
    self.smokyButton.hidden=YES;
    self.spicyButton.hidden=YES;
    self.overproofButton.hidden=YES;
}

//Reset app
//- (IBAction)resetButton:(id)sender {
//    [self reset];
//}
//
//-(void)reset{
//    if ([self isViewLoaded]) {
//        self.view=nil;
//        [self viewDidLoad];
//    }
//}

@end
