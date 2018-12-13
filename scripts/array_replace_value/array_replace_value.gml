
var _array = argument0;
var _oldValue = argument1;
var _newVal = argument2;
var _indexToReplaceAt = array_findindex(_array, _oldValue);

if(_indexToReplaceAt == -1) 
	return -1;

	
_array[@ _indexToReplaceAt] = _newVal;