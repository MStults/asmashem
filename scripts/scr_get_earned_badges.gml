
var badgeArr = 0;
var len = BADGES.ATOM6 + 1;
var frontIndex = 0;
var backIndex = len;

ini_open("atom_smashem.ini");
for(var i=1; i<len; i++)
{
    var found = ini_read_real( 'badges', string(i), 0);
    if found > 0 
    then badgeArr[frontIndex++] = i;
    else badgeArr[--backIndex] = BADGES.UNKNOWN;
}
ini_close(); 
return badgeArr;
