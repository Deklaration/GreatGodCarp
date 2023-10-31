// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function map(value, start1, stop1, start2, stop2){
//var value = argument0;
//var start1 = argument1;
//var stop1 = argument2;
//var start2 = argument3;
//var stop2 = argument4;

return start2 + (stop2 - start2) * ((value - start1) / (stop1 - start1));

}