//
//  CategoryViewController.m
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryTableViewCell.h"
#import "ListViewController.h"

@interface CategoryViewController ()
@property (nonatomic, strong) NSArray *categoriesArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSString *selectedTitle;


@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // ***WAZNE*** REJESTROWANIE XIBA
    [self.tableView registerNib:[UINib nibWithNibName:[[CategoryTableViewCell class] description] bundle:nil] forCellReuseIdentifier:[[CategoryTableViewCell class]description]];
    //TABLICA Z KATEGORIAMI
    self.categoriesArray=[[NSArray alloc] initWithObjects:@"Whisky", @"Vodka", @"Rum", @"Gin", nil];
    [self.tableView reloadData];
    [self prepareData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[[CategoryTableViewCell class] description]];
    //TWORZENIE RZEDOW ODWOLUJESZ SIE DO XIB
    [cell customizeWithTitle:self.categoriesArray[indexPath.row]];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categoriesArray.count;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //USTAWIANIE OBIEKTU DO PRZESLANIA
    self.selectedTitle = self.categoriesArray[indexPath.row];
    
    //ROBISZ PRZEJSCIE
    [self performSegueWithIdentifier:@"showList" sender:self];
}

- (void)prepareData{
    NSArray *vodkaArray=[[NSArray alloc] initWithObjects:@"Cosmopolitan", @"Vodka Sour", @"Vodka Martini", @"Black Russian", nil];
    NSArray *rumArray=[[NSArray alloc] initWithObjects:@"Cuba Libre", @"Daiquiri", @"Mojito", @"Strawberry Daiquiri", nil];
    NSArray *ginArray=[[NSArray alloc] initWithObjects:@"Tom Collins", @"Basil Smash", @"Gin Sour", @"Singapour Sling", nil];
    NSArray *whiskyArray=[[NSArray alloc] initWithObjects:@"Old Fashioned", @"Whisky Sour", @"Manhattan", @"New York Sour", nil];

    NSMutableDictionary *dict  = [NSMutableDictionary new];
    
    [dict setObject:vodkaArray forKey:@"Vodka"];
    [dict setObject:rumArray forKey:@"Rum"];
    [dict setObject:ginArray forKey:@"Gin"];
    [dict setObject:whiskyArray forKey:@"whiskey"];
}



#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //MAGIC VOODOO!
    if ([segue.identifier isEqualToString:@"showList"]) {
        ListViewController *vc = [segue destinationViewController];
        vc.selectedTitle = self.selectedTitle;
        
    }
}

@end
