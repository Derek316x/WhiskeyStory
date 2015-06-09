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
@property (weak, nonatomic) IBOutlet UIButton *buzzedButton;
@property (weak, nonatomic) IBOutlet UIButton *wastedButton;
@property (weak, nonatomic) IBOutlet UIButton *shakenButton;
@property (weak, nonatomic) IBOutlet UIButton *stirredButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //hide buttons to be used later
    [self hideDrinkType];
    [self hideFlavors];
    [self hideBuzzedWasted];
    [self hideShakenStirred];
    
    self.currentQuestion.text = @"Are you in the mood for whiskey?";

    
}

- (IBAction)moodYES:(id)sender {
    
    //hide YES/NO
    [self hideYesNo];
    
    whiskeyMood = YES;
    if (whiskeyMood) {
        
            //user chooses shot, neat, or cocktail
            self.currentQuestion.text = @"What type of drink would you like?";
        
        [self showDrinkType];
        
    }
    
}
- (IBAction)moodNO:(id)sender {
    
    [self hideYesNo];
    
    //no whiskey tonight
    whiskeyMood = NO;
    self.currentQuestion.text = @"Have a beer.";
    
    //shows picture of beer
    self.whiskeyImage.image = [UIImage imageNamed:@"beer.jpg"];
    [self.view addSubview:self.whiskeyImage];
}


//sets drink types when button is pressed
- (IBAction)shotButton:(id)sender {
    drinkType=1;
    shots = YES;
    [self hideDrinkType];
    self.currentQuestion.text = @"How hard are you going tonight?";

    [self showBuzzedWasted];
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
    cocktail = YES;
    
    [self hideDrinkType];
    [self showShakenStirred];
    
    self.currentQuestion.text = @"How would you like your drink prepared?";
    
}

//methods when flavor is chosen for neat drink
- (IBAction)sweetButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"Four Roses\nMaker's Mark\nJameson 18";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"sweetimage.png"];
    [self.view addSubview:self.whiskeyImage];
    
}
- (IBAction)savoryButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"Yamazaki";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"savoryimage.png"];
    [self.view addSubview:self.whiskeyImage];

}
- (IBAction)smokyButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"Lagavulin\n Ardbeg\nHighland Park 12\nConnemara";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"smokyimage.png"];
    [self.view addSubview:self.whiskeyImage];
}
- (IBAction)spicyButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"Rye Willitt\nRittenhouse\nGeorge Dickel Rye\nWild Turkey 101";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"spicyimage.png"];
    [self.view addSubview:self.whiskeyImage];
}
- (IBAction)overproofButton:(id)sender {
    [self hideFlavors];
    
    self.currentQuestion.text = @"George T Stagg\nBooker's\nBaker's Bourbon";
    
    //shows picture of whiskey
    self.whiskeyImage.image = [UIImage imageNamed:@"overproof.png"];
    [self.view addSubview:self.whiskeyImage];
}

//buzzed or wasted
- (IBAction)buzzedButton:(id)sender {
    [self hideBuzzedWasted];
    self.currentQuestion.text = @"Don't do shots.";
    
    //show options
    self.neatButton.hidden=NO;
    self.cocktailButton.hidden=NO;
    
}
- (IBAction)wastedButton:(id)sender {
    
    [self hideBuzzedWasted];
    self.currentQuestion.text = @"SHOTS!\nSHOTS!\nSHOTS!";
    
    self.whiskeyImage.image = [UIImage imageNamed:@"shotimage.jpg"];
    [self.view addSubview:self.whiskeyImage];
}

//cocktail options
- (IBAction)shakenButton:(id)sender {
    [self hideShakenStirred];
    
    self.currentQuestion.text = @"Whiskey Sour";
    
    self.whiskeyImage.image = [UIImage imageNamed:@"whiskeysour.png"];
    [self.view addSubview:self.whiskeyImage];
    
}
- (IBAction)stirredButton:(id)sender {
    [self hideShakenStirred];
    
    self.currentQuestion.text = @"Old Fashioned";
    
    self.whiskeyImage.image = [UIImage imageNamed:@"oldfashioned.png"];
    [self.view addSubview:self.whiskeyImage];
}

//methods to show and hide buttons
-(void)showYesNo {
    self.moodNO.hidden=NO;
    self.moodYES.hidden=NO;
}

-(void)hideYesNo {
    self.moodNO.hidden=YES;
    self.moodYES.hidden=YES;
}

-(void)showDrinkType {
    self.neatButton.hidden=NO;
    self.shotButton.hidden=NO;
    self.cocktailButton.hidden=NO;
}

-(void)hideDrinkType {
    self.neatButton.hidden=YES;
    self.shotButton.hidden=YES;
    self.cocktailButton.hidden=YES;
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

-(void)hideBuzzedWasted {
    self.buzzedButton.hidden=YES;
    self.wastedButton.hidden=YES;
}

-(void)showBuzzedWasted {
    self.buzzedButton.hidden=NO;
    self.wastedButton.hidden=NO;
}

-(void)hideShakenStirred {
    self.shakenButton.hidden=YES;
    self.stirredButton.hidden=YES;
}

-(void)showShakenStirred {
    self.shakenButton.hidden=NO;
    self.stirredButton.hidden=NO;
}

//reset
- (IBAction)resetButton:(id)sender {
    
    [self reset];
}


-(void)reset {
    
    //removes whiskey image
    [self.whiskeyImage removeFromSuperview];
    
    //hide buttons to be used later
    [self hideDrinkType];
    [self hideFlavors];
    [self hideBuzzedWasted];
    [self hideShakenStirred];
    
    //show YES/NO
    [self showYesNo];
    
    self.currentQuestion.text = @"Are you in the mood for whiskey?";
}


@end
