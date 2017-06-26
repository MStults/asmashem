
switch (os_type)
{
    case os_windows: 
    
        break;
        
    case os_android:
        if not InterstitialLoaded() 
        then LoadInterstitial();
        break;
    
    case os_macosx: 
    
        break;
        
    case os_ios: 
        if not InterstitialLoaded() 
        then LoadInterstitial();
        break;
}
   
