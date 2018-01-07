package ${YYAndroidPackageName};

//import ${YYAndroidPackageName}.R;
//import ${YYAndroidPackageName}.RunnerActivity;
//import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.widget.Toast;

import android.content.ContentResolver;
import android.provider.Settings;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;

import android.net.Uri;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;

public class Mobile {

	private InterstitialAd mInterstitialAd = null;
	private String mInterstitial_ad_unit = "";
	private boolean mShown = false;

	public static final String MY_AD_UNIT = "ca-app-pub-8744843829641364/7383507531";
	public static final String TEST_AD_UNIT = "ca-app-pub-3940256099942544/1033173712";

	public Mobile(){
		//context => RunnerActivity.CurrentActivity

		mInterstitial_ad_unit = MY_AD_UNIT;
	}

	public void UseTestAds(double useTest){
		mInterstitial_ad_unit = (useTest > 0)
			? TEST_AD_UNIT
			: MY_AD_UNIT;
	}

	public double UsingTestAds(){
		if(mInterstitial_ad_unit == TEST_AD_UNIT) return 1;
		return -4;
	}

	private String mToastMsg = "";
	public void Toast(String msg){
		mToastMsg = msg;
		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				Toast.makeText(RunnerActivity.CurrentActivity, mToastMsg, Toast.LENGTH_LONG).show();
			}
		});
	}

	public void ToastShort(String msg){
		mToastMsg = msg;
		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				Toast.makeText(RunnerActivity.CurrentActivity, mToastMsg, Toast.LENGTH_SHORT).show();
			}
		});
	}

	public String TestMethod() {
		return "TEST METHOD WORK";
	}

	public double IsAirplaneModeOn()
	{
		ContentResolver cr = RunnerActivity.CurrentActivity.getContentResolver();
		int val = Settings.System.getInt(cr, Settings.System.AIRPLANE_MODE_ON, 0);
		return val > 0 ? 1 : -4;
	}

	double mIsLoaded = -4;
	public double InterstitialLoaded(){

		mIsLoaded = -4;
		if(mShown) return mIsLoaded;
		if(mInterstitialAd == null) return mIsLoaded;


		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				if(mInterstitialAd.isLoaded())
					mIsLoaded = 1;
			}
		});

		return mIsLoaded;
	}

	public void LoadInterstitial(){
		mInterstitialAd = newInterstitialAd();
		loadInterstitial();
	}

	public void LoadInterstitialIfNeeded(){
		if(mInterstitialAd == null)
			mInterstitialAd = newInterstitialAd();

		if(!mInterstitialAd.isLoaded())
			loadInterstitial();
	}

	public void ShowInterstitial() {

		RunnerActivity.ViewHandler.post( new Runnable() {
			public void run()
			{
				Log.i("ATOM SMASHEM","showinterstitial called");
				if (mInterstitialAd != null && mInterstitialAd.isLoaded())
				{
					mShown = true;
					RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
						public void run() {
							mInterstitialAd.show();
						}
					});
				}
				else
				{
					Log.i("ATOM SMASHEM", "Interstitial ad was not ready to be shown.");
				}
			}

		});

	}

	private InterstitialAd newInterstitialAd() {
		mShown = false;
		InterstitialAd interstitialAd = new InterstitialAd(RunnerActivity.CurrentActivity);
		interstitialAd.setAdUnitId(mInterstitial_ad_unit);
		/*************************
		interstitialAd.setAdListener(new AdListener() {
			@Override
			public void onAdLoaded() {

			}

			@Override
			public void onAdFailedToLoad(int errorCode) {
				mInterstitialAd = null;

			}

			@Override
			public void onAdClosed() {
				mInterstitialAd = null;
				//mInterstitialAd = newInterstitialAd();
		 		//loadInterstitial();
			}
		});
		***********************/
		return interstitialAd;
    }

    private void loadInterstitial() {

		RunnerActivity.ViewHandler.post( new Runnable() {
    	public void run()
    	{
			if(mInterstitialAd==null)
				newInterstitialAd();

			AdRequest.Builder builder = new AdRequest.Builder();
			builder.addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
			AdRequest adRequest = builder.build();

			// Load the interstitial ad.
			mInterstitialAd.loadAd(adRequest);
		}});

    }

	 public  void FBShare(String linkUrl)	{
		Toast("Loading Facebook...");
	    try {
            if (ShareDialog.canShow(ShareLinkContent.class)) {
                ShareLinkContent content = new ShareLinkContent.Builder()
                        .setContentUrl(Uri.parse(linkUrl))
                        .build();
                ShareDialog.show(RunnerActivity.CurrentActivity, content);
            } else {
                Toast("Unable to share the Atomsmashem link on Facebook.");
            }
        } catch (Exception ex){
            Toast("Sharing the Atomsmashem link cause an exception.");
        }
	}
/***
	public void FBShareScreen()	{
		 Toast("HIT FBShareScreen");
		SharePhoto photo = new SharePhoto.Builder()
                        .setBitmap(takeScreenshot())
                        .build();
		SharePhotoContent content = new SharePhotoContent.Builder()
				.addPhoto(photo)
				.build();

		ShareContent shareContent = new ShareMediaContent.Builder()
				.addMedium(photo)
				.build();

		ShareDialog.show(RunnerActivity.CurrentActivity , content);
	}

	private Bitmap takeScreenshot() {
            // create bitmap screen capture
            View v1 = RunnerActivity.CurrentActivity.getWindow().getDecorView().getRootView();
            v1.setDrawingCacheEnabled(true);
            Bitmap bitmap = Bitmap.createBitmap(v1.getDrawingCache());
            v1.setDrawingCacheEnabled(false);
           return bitmap;
    }
***/
}