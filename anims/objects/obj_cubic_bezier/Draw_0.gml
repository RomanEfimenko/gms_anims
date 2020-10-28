/// @description 
draw_set_color(c_black);
draw_rectangle(512-256-32,256-32,512+256+32,256+32,false);
if(drawing) {
	
	position = bezier_point_find(p_0,0,p_1,0,p_2,1,p_3,1,time);
	show_debug_message("time now: "+string(abs(time)));
	show_debug_message("x now: "+string(global.bgc_return_x));
	show_debug_message("y now: "+string(global.bgc_return_y));
	position = inout_quad(clamp(global.bgc_return_x*1,0,1.0), 0.0, 1.0, 1.0)*width;
	if(-1==time_simbol)position = width - position;
	
	//position = get_pos_easing_anim(1,time);
	show_debug_message(string(position));
	draw_set_color(c_blue);
	draw_rectangle(512-256-30+(position),256-30,512-256-30+(position)+64,256+30,false);
	time=time+0.01*time_simbol;
	if(time==1.0||time==0)time_simbol=-1*time_simbol;
}