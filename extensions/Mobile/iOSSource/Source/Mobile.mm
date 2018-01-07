
#import "Mobile.h"
#import "Reachability.h"

extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern UIViewController *g_controller;
extern UIView *g_glView;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

BOOL mInterstitialReady = false;

NSString* MY_AD_UNIT = @"ca-app-pub-8744843829641364/7383507531";
NSString* TEST_AD_UNIT = @"ca-app-pub-3940256099942544/1033173712";

NSString* m_AdUnit = MY_AD_UNIT;

BOOL m_use_test = false;

@implementation Mobile

-(void)Mobile_Init
{
    
}

-(NSString *)TestMethod
{
    return @"Hi from objective C";
}

-(void) Toast:(char *)msg
{
    NSString* nsmsg  = [NSString stringWithCString:msg encoding:NSUTF8StringEncoding];
    [nsmsg retain];
    NSLog(@"ATOM SMASHEM: %@",nsmsg);
}


-(void) ToastShort:(char *)msg
{
    NSString* nsmsg  = [NSString stringWithCString:msg encoding:NSUTF8StringEncoding];
    [nsmsg retain];
    NSLog(@"ATOM SMASHEM: %@",nsmsg);
}

//Class.m
- (double)IsAirplaneModeOn
{
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    return networkStatus == NotReachable ? 1 : -4;
}

-(void) LoadInterstitial
{
    //create the request
    GADRequest *request = [GADRequest request];
    
    if(m_use_test) request.testDevices = @[ @"f4f7c153de32ef40b58acfa07127573e" ];
    
    //must create a new interstitial object each time
    [interstitial release];
    
    //interstitial.adUnitID = g_IntAdId;
    interstitial = [[GADInterstitial alloc] initWithAdUnitID:MY_AD_UNIT];
    
    interstitial.delegate = self;
    [interstitial loadRequest:request];
   
     mInterstitialReady = false;
    
}
-(void) ShowInterstitial
{
    [interstitial presentFromRootViewController:g_controller];
    mInterstitialReady = false;	//must reload to display again
    
}
-(void) UseTestAds:(double) useTest
{
    m_use_test = (useTest > 0);
}

-(double) UsingTestAds
{
    if(m_use_test) return 1;
    return -4;
}
-(double) InterstitialLoaded
{
    return mInterstitialReady ? 1 : -4;
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    NSLog(@"interstitialDidReceiveAd");
    mInterstitialReady = true;
}
- (void)interstitial:(GADInterstitial *)ad didFailToReceiveAdWithError:(GADRequestError *)error
{
    NSLog(@"Interstitial Ad failed to receive: %@",error);
}

- (void)interstitialWillPresentScreen:(GADInterstitial *)ad
{
    NSLog(@"Interstitial will present screen");
}

// Sent before the interstitial is to be animated off the screen.
- (void)interstitialWillDismissScreen:(GADInterstitial *)ad
{
    NSLog(@"Interstitial will dismiss screen");
}

// Sent just after dismissing an interstitial and it has animated off the
// screen.
- (void)interstitialDidDismissScreen:(GADInterstitial *)ad
{
    NSLog(@"Interstitial did dismiss screen");
}

// Sent just before the application will background or terminate because the
// user clicked on an ad that will launch another application (such as the App
// Store).  The normal UIApplicationDelegate methods, like
// applicationDidEnterBackground:, will be called immediately before this.
- (void)interstitialWillLeaveApplication:(GADInterstitial *)ad
{
    NSLog(@"Interstitial will leave app");
}

-(void) FBShare:(char*) url
{
    NSString* nsurl  = [NSString stringWithCString:url encoding:NSUTF8StringEncoding];
    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
    content.contentURL = [NSURL URLWithString:nsurl];
}
@end
