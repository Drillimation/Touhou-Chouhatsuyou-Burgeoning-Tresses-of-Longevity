if event_data[? "event_type"] == "sequence event" {
    switch (event_data[? "message"]) {
		case "0": text = txt[0]; break;
		case "1": text = txt[1]; break;
		case "2": text = txt[2]; break;
		case "3": text = txt[3]; break;
		case "4": text = txt[4]; break;
		case "5": text = txt[5]; break;
		case "6": text = txt[6]; break;
		case "7": text = txt[7]; break;
		case "8": text = txt[8]; break;
		case "9": text = txt[9]; break;
		case "10": text = txt[10]; break;
		case "11": text = txt[11]; break;
		case "12": text = txt[12]; break;
	}
}