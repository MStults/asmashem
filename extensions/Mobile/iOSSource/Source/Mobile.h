#import "GoogleMobileAds/GADInterstitial.h"

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


@end
