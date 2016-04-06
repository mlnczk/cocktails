//
//  CategoryTableViewCell.m
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "CategoryTableViewCell.h"

@interface CategoryTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageBottle;



@end
@implementation CategoryTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)customizeWithTitle:(NSString *)title{
    self.labelTitle.text = title;
    self.imageBottle.image = [UIImage imageNamed:title];
}

@end
