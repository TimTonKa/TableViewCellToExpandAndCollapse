//
//  ArraySectionController.h
//  TapTableViewCellToExtend
//
//  Created by 1134 on 2017/5/17.
//  Copyright © 2017年 1134. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewCellData.h"

@interface ArraySectionController : TableViewCellData

@property (nonatomic, copy) NSString* title;

- (id)initWithArray:(NSArray*) array viewController:(UIViewController *)givenViewController;

@end
