//
//  ListViewCell.m
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "ListViewCell.h"
@interface ListViewCell()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageDrink;

@end

@implementation ListViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)customizeWithTitle:(NSString *)title{
    self.labelTitle.text = title;
    self.imageDrink.image = [UIImage imageNamed:title];
}
@end
