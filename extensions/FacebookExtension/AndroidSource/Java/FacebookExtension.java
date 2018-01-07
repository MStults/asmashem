package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

public class FacebookExtension
{
// Facebook communication settings
    public static final String STATUS_IDLE = "IDLE";
    public static final String STATUS_PROCESSING = "PROCESSING";
    public static final String STATUS_FAILED = "FAILED";
    public static final String STATUS_AUTHORISED = "AUTHORISED";
    
    public static String msLoginStatus = STATUS_IDLE; 
    public static String msUserId = ""; 
  
	public void initFacebook(String appID) {
		
	}
	
	public void facebook_send_event(String EventName)
	{
		
	}
	
	public String getUserId()
	{				
		return "";
	}
	
	public String facebookLoginStatus() {
		
		return msLoginStatus;
	}
	

    public void setupFacebook(String[] permissions) {    
    
    }	
	
    private static void SetLoginStatus(String newState)
    {    
    	
    }
    
    //new permissions support WIP...
    public Boolean CheckPermission( String _permission )
    {
    	return false;
    }
     
	public void onResume()
	{

	}
		
    public String getAccessToken()
    {		
		return "";
    }
    
    // Log the user out from Facebook
    public void logout() 
	{
		
    }
   
    public void graphRequest(String _graphPath, String _httpMethod, String[] _keyValuePairs, Integer _dsMapResponse) 
    {

    
    }
        
	public void facebook_refresh_accesstoken()
	{
		
	}
    
    public void dialog(String dialogType, String[] keyValuePairs, Integer dsMapResponse) 
	{  	
    	
    }
	
	public void inviteDialog(String dialogType, String[] keyValuePairs, Integer dsMapResponse) 
    {
    	
    }	      

}