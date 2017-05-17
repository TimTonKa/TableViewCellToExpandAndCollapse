//
//  ArraySectionController.m
//  TapTableViewCellToExtend
//
//  Created by 1134 on 2017/5/17.
//  Copyright © 2017年 1134. All rights reserved.
//

#import "ArraySectionController.h"

@interface ArraySectionController ()

@property (nonatomic,strong) NSArray *content;

@end

@implementation ArraySectionController
@synthesize title;

- (id)initWithArray:(NSArray*) array viewController:(UIViewController *)givenViewController
{
    self = [super initWithViewController:givenViewController];
    if (self) {
        self.content = array;
        self.title = @"Array exemple";
    }
    return self;
}

#pragma mark - Subclass
-(NSUInteger)contentNumberOfRow
{
    return [self.content count];
}

- (NSString *)titleContentForRow:(NSUInteger)row
{
    return [self.content objectAtIndex:row];
}

- (void)didSelectContentCellAtRow:(NSUInteger)row
{
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow]
                                  animated:YES];
}

- (void)dealloc
{
    self.content = nil;
    self.title = nil;
}

@end
