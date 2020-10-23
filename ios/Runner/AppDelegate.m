#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "FlutterIosTextLabelRegistran.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  
  [FlutterIosTextLabelRegistran registerWithRegistry:self];
  
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
