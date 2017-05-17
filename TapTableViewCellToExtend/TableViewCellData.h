//
//  TableViewCellData.h
//  TapTableViewCellToExtend
//
//  Created by 1134 on 2017/5/16.
//  Copyright © 2017年 1134. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewCellData : NSObject

@property (nonatomic, assign) BOOL open;
@property (nonatomic, readonly) NSUInteger contentNumberOfRow;//cell共有多少data
@property (nonatomic, readonly) NSUInteger numberOfRow;//要呈現cell的數量
@property (nonatomic, assign, getter = isOnlyUsingWhiteImages) BOOL useOnlyWhiteImages;
@property (nonatomic, assign) UIColor* titleTextColor; //nil by default, black text
@property (nonatomic, assign) UIColor* titleAlternativeTextColor; //nil by default, dark blue
@property (nonatomic, assign) UITableViewRowAnimation rowAnimation; //Animation to insert/remove cells, UITableViewRowAnimationTop by default

//Must be subclassed to work properly
@property (nonatomic, copy, readonly) NSString* title;



- (id) initWithViewController:(UIViewController*) givenViewController;
//Used by the UITableView's dataSource
- (UITableViewCell*) cellForRow:(NSUInteger) row;
- (NSString*) titleContentForRow:(NSUInteger) row;

//Respond to cell selection
- (void) didSelectCellAtRow:(NSUInteger) row;
- (void) didSelectTitleCell;
- (void) didSelectContentCellAtRow:(NSUInteger) row;

//Reserved for subclasses
@property (nonatomic, readonly) UIViewController *viewController;
@property (nonatomic, readonly) UITableView *tableView;

@end
