//arugument0 => coordinate

var coordinate = argument0;
var dimension = argument1
var scale = argument2;

return (coordinate  + (dimension - dimension * scale) / 2) | 0;
