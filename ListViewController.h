//
//  ListViewController.h
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSString *selectedTitle;

@end
