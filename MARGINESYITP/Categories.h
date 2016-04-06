//
//  Categories.h
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface Categories : JSONModel
@property (nonatomic, strong) NSString *Gin;
@property (nonatomic, strong) NSString *Rum;
@property (nonatomic, strong) NSString *Vodka;
@property (nonatomic, strong) NSString *whiskey;
@end
