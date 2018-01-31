/// @description Insert description here
// You can write your code in this editor
global.server = network_create_server_raw(network_socket_udp, 2593, 255);
global.valid = true;
if (global.server < 0) global.valid = false;
// [index]:[time]
global.chattime = ds_map_create();
// [index]:[user]
global.chatuser = ds_map_create();
// [index]:[data]
global.chatdata = ds_map_create();

global.infomessage = "";
global.infolast = -2;
global.infocurrent = 0;

//global.networkbuffer = buffer_create(256, buffer_grow, 1);