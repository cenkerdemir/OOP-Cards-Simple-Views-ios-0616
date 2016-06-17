//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@property (weak, nonatomic) IBOutlet UIButton *threeOfSpadesButton;

@property (weak, nonatomic) IBOutlet UIButton *fourOfClubsButton;

@property (weak, nonatomic) IBOutlet UIButton *eightOfDiamondsButton;

@property (weak, nonatomic) IBOutlet UIButton *tenOfHeartsButton;


@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}

- (IBAction)threeOfSpadesButton:(UIButton *)sender {
    [self updateLabels:self.threeOfSpades];
}

- (IBAction)fourOfClubsButton:(UIButton *)sender {
    [self updateLabels:self.fourOfClubs];
}

- (IBAction)eightOfDiamondsButton:(UIButton *)sender {
    [self updateLabels:self.eightOfDiamonds];
}

- (IBAction)tenOfHeartsButton:(UIButton *)sender {
    [self updateLabels:self.tenOfHearts];
}


- (void)updateLabels:(FISCard *)card {
    self.topLabel.text = card.cardLabel;
    self.middleLabel.text = card.cardLabel;
    self.bottomLabel.text = card.cardLabel;
}

@end
