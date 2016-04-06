//
//  ListViewController.m
//  MARGINESYITP
//
//  Created by Marcin Mielniczek on 4/5/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "ListViewController.h"
#import "ListViewCell.h"
#import "DetailsViewController.h"
#import "Categories.h"

@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *listTableView;
@property (nonatomic, strong)NSArray *finalArray;
@property (nonatomic, strong)NSString *selectedDrink;


@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareData];
    [self.listTableView registerNib:[UINib nibWithNibName:[[ListViewCell class] description] bundle:nil] forCellReuseIdentifier:[[ListViewCell class]description]];
    NSArray *vodkaArray=[[NSArray alloc] initWithObjects:@"Cosmopolitan", @"Vodka Sour", @"Vodka Martini", @"Black Russian", nil];
    NSArray *rumArray=[[NSArray alloc] initWithObjects:@"Cuba Libre", @"Daiquiri", @"Mojito", @"Strawberry Daiquiri", nil];
    NSArray *ginArray=[[NSArray alloc] initWithObjects:@"Tom Collins", @"Basil Smash", @"Gin Sour", @"Singapour Sling", nil];
    NSArray *whiskyArray=[[NSArray alloc] initWithObjects:@"Old Fashioned", @"Whisky Sour", @"Manhattan", @"New York Sour", nil];
    //SZYBSZE ALKOWANIE
    self.finalArray = [NSArray new];
    if([self.selectedTitle isEqualToString:@"Vodka"]){
        self.finalArray = vodkaArray;
    }
    else if([self.selectedTitle isEqualToString:@"Rum"]){
        self.finalArray = rumArray;
    }
    else if([self.selectedTitle isEqualToString:@"Gin"]){
        self.finalArray = ginArray;
    }
    else{
        self.finalArray = whiskyArray;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[[ListViewCell class]description]];
    [cell customizeWithTitle:self.finalArray[indexPath.row]];
    return cell;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.finalArray.count;
}


-(void)tableView:(UITableView *)listTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //USTAWIANIE OBIEKTU DO PRZESLANIA
    self.selectedDrink = self.finalArray[indexPath.row];
        
    //ROBISZ PRZEJSCIE
    [self performSegueWithIdentifier:@"showDetails" sender:self];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetails"]) {
        DetailsViewController *vc = [segue destinationViewController];
        vc.selectedDrink = self.selectedDrink;
        
    }
}


@end
