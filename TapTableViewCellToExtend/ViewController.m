//
//  ViewController.m
//  TapTableViewCellToExtend
//
//  Created by 1134 on 2017/5/16.
//  Copyright © 2017年 1134. All rights reserved.
//

#import "ViewController.h"
#import "SimpleSectionViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong) NSMutableArray *dataArray;
@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //測試self如果不是TableViewController傳入show什麼訊息
    SimpleSectionViewController *vc = [[SimpleSectionViewController alloc] initWithViewController:self];
    [self.dataArray addObject:vc];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.dataArray count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section >= [self.dataArray count]) {
        return 0;
    }
    TableViewCellData *dataModel = self.dataArray[section];
    return dataModel.numberOfRow;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    return nil;
}

#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


@end
