function scr_json_save_file(_variable,_file){
	var _string = json_stringify(_variable);
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,_file);
	buffer_delete(_buffer);
}