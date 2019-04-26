var _Object1 = argument0;
var _Object2 = argument1;
var _vspd = argument2;

show_debug_message(isLeftOf(_Object1, _Object2, -300, 0))
show_debug_message(isRightOf(_Object1, _Object2, +120, 0))
show_debug_message(isAboveOf(_Object1, _Object2, -120, 0))
show_debug_message(isBelowOf(_Object1, _Object2, +200, 0))

if(isLeftOf(_Object1, _Object2, -200, 0) && isRightOf(_Object1, _Object2, +120, 0) && isAboveOf(_Object1, _Object2, -120, 0) && isBelowOf(_Object1, _Object2, +200, 0)) {
return true;	
}
else {
return false;	
}