
if not scr_ad_can_show() then exit;

global.ad_last_shown = current_time;

//if browser then do the HTML thing
if os_browser != browser_not_a_browser
{
    Scroll_to_bottom();    
}
else 
{
    switch (os_type)
    {
        case os_windows: 
            show_debug_message("--<{ SHOW AD }>--");
            break;
        case os_android:
            ShowInterstitial();
            break;
        
        case os_macosx: 
        
            break;
        case os_ios: 
            ShowInterstitial();
            break;
    }
}
