exception_unhandled_handler(function scr_exception_handler(exception){
	scr_change_bgm(15);
	var _buffer = buffer_load("main/crash" + string(global.suf) + ".json");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	var _load_data = json_parse(_string);
	var _ex = struct_get(_load_data,"main");
	var _date = string(current_year) + string_repeat("0",2-string_length(string(current_month))) + string(current_month) + string_repeat("0",2-string_length(string(current_day))) + string(current_day) + " " + string_repeat("0",2-string_length(string(current_hour))) + string(current_hour) + "" + string_repeat("0",2-string_length(string(current_minute))) + string(current_minute) + string_repeat("0",2-string_length(string(current_second))) + string(current_second)
	var _witty_comment = struct_get(_load_data,"witty_comments")
	
	randomize();
	_ex = string_replace_all(_ex,"%datetime",_date)
	_ex = string_replace_all(_ex,"%cause",exception.longMessage)
	_ex = string_replace_all(_ex,"%witty_comment",_witty_comment[irandom_range(0,array_length(_witty_comment) - 1)])
	
    var _f = file_text_open_write("crash " + string(_date) + ".txt");
    file_text_write_string(_f, string(_ex));
    file_text_close(_f);
	
	show_message(_ex);
	return 0;
});