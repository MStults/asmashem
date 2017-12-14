Place the file:
	build.gradle 
into: 
	%AppData%\Roaming\GameMaker-Studio\Android\runner\RootFiles

Example:
	 C:\Users\Mike\AppData\Roaming\GameMaker-Studio\Android\runner\ProjectFiles\build.gradle
	 

Resolves issue:
	FAILURE: Build failed with an exception.

	* What went wrong:
	A problem occurred configuring project ':com.supernomi.atomsmashem'.
	> Could not resolve all dependencies for configuration ':com.supernomi.atomsmashem:_debugApkCopy'.
	   > Could not find com.android.support:support-v4:27.0.1.
	 
Fix:
	Adds the package reference url 'https://maven.google.com/'