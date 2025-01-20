if event_data[? "event_type"] == "sequence event" {
    switch (event_data[? "message"]) {
		case "0": text = txt[0]; break;
		case "1": text = txt[1]; break;
		case "2": text = txt[2]; break;
		case "3": text = txt[3]; break;
		case "4": text = txt[4]; break;
	}
}