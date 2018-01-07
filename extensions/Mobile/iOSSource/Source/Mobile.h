#import "GoogleMobileAds/GADInterstitial.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface Mobile:NSObject<GADInterstitialDelegate>
{
    GADInterstitial *interstitial;
}
-(void)Mobile_Init;
-(NSString *)TestMethod;
-(void) LoadInterstitial;
-(void) ShowInterstitial;
-(void) UseTestAds:(double) useTest;
-(double) UsingTestAds;
-(double) InterstitialLoaded;
-(void) Toast:(char*) msg;
-(void) ToastShort:(char*) msg;
-(double)IsAirplaneModeOn;
-(void) FBShare:(char*) url;

@end
