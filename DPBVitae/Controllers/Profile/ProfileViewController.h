//
//  ProfileViewController.h
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h> 

@interface ProfileViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate,MFMailComposeViewControllerDelegate>

//
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;

/**
 *  <#Description#>
 *
 *  @param indexPath <#indexPath description#>
 *
 *  @return <#return value description#>
 */
- (NSString *)setContentforRowAtIndexPath:(NSIndexPath *)indexPath;

/**
 *  <#Description#>
 *
 *  @param sender <#sender description#>
 */
- (IBAction)callDavid:(id)sender;

/**
 *  <#Description#>
 *
 *  @param sender <#sender description#>
 */
- (IBAction)emailToDavid:(id)sender;

@end
