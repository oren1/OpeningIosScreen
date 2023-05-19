//
//  RCTScreensModule.m
//  MyApp
//
//  Created by oren shalev on 19/05/2023.
//

#import <Foundation/Foundation.h>
#import "RCTScreensModule.h"
#import <React/RCTLog.h>
#import "AppDelegate.h"
#import "FirstViewController.h"

@implementation RCTCalendarModule

// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE(iOSScreens);

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(openScreen: (NSString *)screenName)
{

  AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
  FirstViewController *myViewController = [storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
  myViewController.screenData = screenName;
  [delegate.rootViewController presentViewController:myViewController animated:true completion:nil];
  
  RCTLogInfo(@"Screen Name: %@", screenName);

}

@end
