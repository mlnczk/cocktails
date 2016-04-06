//
//  DetailsViewController.m
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageDrink;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelTitle.text = self.selectedDrink;
    self.imageDrink.image = [UIImage imageNamed:self.selectedDrink];
    self.labelText.text = @"Pour 50ml of good quality vodka\n20ml fresh lemon juice\n20ml of simple sirop";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
