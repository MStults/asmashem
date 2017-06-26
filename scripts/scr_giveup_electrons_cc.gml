//argument0 -> 1 = excited electrons, 2 = good, 3 = bad
//argument1 -> multipler

var arr = scr_giveup_electrons(argument0, true, 8);   
if argument1 > 1
{
    var l = array_length_1d(arr);
    for(var i=0; i<l; i++) arr[i].multipler = argument1;
}
