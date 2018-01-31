/// @description Insert description here
// You can write your code in this editor
if (global.valid)
{
	if (global.infolast != global.infocurrent)
	{
		// new data, refresh info
		global.infolast = global.infocurrent;
	
		var dsize_ = ds_map_size(global.chattime);
		global.infomessage = "log size: " + string(dsize_)
			+ "\nlast message: \n"
			+ (dsize_ > 0 ? 
				ds_map_find_value(global.chatuser, dsize_) + " ("  
					+ date_datetime_string(ds_map_find_value(global.chattime, dsize_)) + "): "				
					+ ds_map_find_value(global.chatdata, dsize_)
				: "NO NEW MESSAGE");
	}
}
else
{
	if (global.infomessage == "")
		global.infomessage = "SERVER CREATION FAILED";
}