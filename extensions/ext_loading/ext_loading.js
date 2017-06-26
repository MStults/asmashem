
//exposed function 
function html_loader(_graphics, _width, _height, _total, _current, _loadingscreen) {        
    if(window.game_loader) window.game_loader(_graphics, _width, _height, _total, _current, _loadingscreen);
	else std_loader(_graphics, _width, _height, _total, _current, _loadingscreen);
}


function std_loader(_graphics, _width,_height, _total, _current, _loadingscreen) {

	// If we have a loading screen, draw that instead of the loading bar.
	if (_loadingscreen){
		_graphics.drawImage(_loadingscreen, 0, 0, _width, _height);
	} 
	else
	{
		var barwidth = (_width / 100) * 50;				// Loading bar 50% width of screen
		var barheight = 2;                              // Loading bar only 2 pixels high
		var x = (_width - barwidth) / 2;				// center the loading bar
		var y = 10 + (_height - barheight) / 2;			// and the move it down fro the text a little
		var w = (barwidth / _total) * _current;

		// Clear screen
		_graphics.fillStyle = "rgba(21,21,21,255)";
		_graphics.fillRect(0, 0, _width, _height);


		// Only draw the bar once "something" has loaded in.
		if (_current != 0)
		{
			// Draw the dark gray bar
			_graphics.fillStyle = "rgba(64,64,64,255)";
			_graphics.fillRect(x, y, barwidth, barheight);

			// Now draw the loaded files bar over the top.
			_graphics.fillStyle = "rgba(141,143,144,255)";
			_graphics.fillRect(x, y, w, barheight);
		}

		// Finally, draw the text.
		jsDrawCenteredText(_graphics, _width / 2, (_height / 2), "rgba(141,143,144,255)", "Loading");
	}
    
    function jsDrawCenteredText(_graphics, x, y, colour, text) {
        _graphics.fillStyle = colour;
        _graphics.lineStyle = colour;
        _graphics.font = "14px Verdana"; ;
        _graphics.textAlign = "center";
        _graphics.fillText(text, x, y);
        _graphics.textAlign = "left";
    }
}

