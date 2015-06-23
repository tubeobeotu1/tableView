//
//  ViewController.m
//  customizeTableView
//
//  Created by tunguyen on 6/23/15.
//  Copyright (c) 2015 tunguyen. All rights reserved.
//

#import "ViewController.h"
static NSString *TableViewCellIdentifier = @"MyCells";
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *myTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.myTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    [self.myTableView registerClass:[UITableViewCell class]
//              forCellReuseIdentifier:TableViewCellIdentifier];
//    self.myTableView.dataSource=self;
//    
//    self.myTableView.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
//    [self.view addSubview:self.myTableView];
    
    
    //attention
    self.myTableView = [[UITableView alloc]
                        initWithFrame:self.view.bounds
                        style:UITableViewStylePlain];
    [self.myTableView registerClass:[UITableViewCell class]
             forCellReuseIdentifier:TableViewCellIdentifier];
    self.myTableView.delegate=self;
    self.myTableView.dataSource = self;
    self.myTableView.autoresizingMask =
    UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.myTableView];
    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if ([tableView isEqual:self.myTableView]){
        return 3;
    }
    return 0;
}
//- (NSInteger)tableView:(UITableView *)tableView
// numberOfRowsInSection:(NSInteger)section{
//    if ([tableView isEqual:self.myTableView]){
//        switch (section){
//            case 0:{
//                return 2;
//                break;
//            }
//            case 1:{
//                return 8;
//                break;
//            }
//            case 2:{
//                return 8;
//                break;
//            }
//        }
//    }
//    return 0;
//}
//- (UITableViewCell *) tableView:(UITableView *)tableView
//          cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = nil;
//    if ([tableView isEqual:self.myTableView]){
//        cell = [tableView
//                dequeueReusableCellWithIdentifier:TableViewCellIdentifier
//                forIndexPath:indexPath];
//        cell.textLabel.text = [NSString stringWithFormat:
//                               @"Section %ld, Row %ld",
//                               (long)indexPath.section,
//                               (long)indexPath.row];
//    }
//    return cell;
//}


//cell
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* result = nil;
    if ([tableView isEqual:self.myTableView]){
        result = [tableView
                  dequeueReusableCellWithIdentifier:TableViewCellIdentifier
                  forIndexPath:indexPath];
        result.textLabel.text =
        [NSString stringWithFormat:@"Section %ld, Row %ld",
         (long)indexPath.section,
         (long)indexPath.row];
        
        //attention in table
        result.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    return result;
}
- (NSInteger) tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (void) tableView:(UITableView *)tableView
accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    /* Do something when the accessory button is tapped */
    NSLog(@"Accessory button is tapped for cell at index path = %@", indexPath);
    UITableViewCell *ownerCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Cell Title = %@", ownerCell.textLabel.text);
}

@end
