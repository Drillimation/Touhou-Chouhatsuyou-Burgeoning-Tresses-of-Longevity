function scr_json_load_file(_file,_variable,_global = false){
	var _buffer = buffer_load(_file);
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	var _load_data = json_parse(_string);
	
	if _global == true {
		variable_global_set(_variable,_load_data)
	}
	else {
		//variable_instance_set(self,_variable,_load_data);
		return _load_data
	}
}