//
//  SimpleSectionViewController.m
//  TapTableViewCellToExtend
//
//  Created by 1134 on 2017/5/17.
//  Copyright © 2017年 1134. All rights reserved.
//

#import "SimpleSectionViewController.h"

@interface SimpleSectionViewController ()

@property (nonatomic, strong) NSArray* colorArray;

@end

@implementation SimpleSectionViewController


#pragma mark - Subclass
-(NSString*) title
{
    return NSLocalizedString(@"Simple exemple",);
}

-(NSString*)titleContentForRow:(NSUInteger)row
{
    return [self.colorArray objectAtIndex:row];
}

-(NSUInteger)contentNumberOfRow
{
    return [self.colorArray count];
}

- (void)didSelectContentCellAtRow:(NSUInteger)row {
    
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

#pragma mark - Getters
- (NSArray*)colorArray {
    if (_colorArray == nil) {
        _colorArray = [[NSArray alloc] initWithObjects:@"Blue", @"Green", @"Red", @"Yellow", nil];
    }
    return _colorArray;
}

@end
