///@arg id_anim
///@arg pos
// get_pos_easing_anim()
/*	Animations:
	 0. default - return pos;
	 1. easeInOutQuint - https://easings.net/uk#easeInOutQuint
	 2. easeInBack - https://easings.net/uk#easeInBack
	 3. easeInOutCirc - https://easings.net/ru#easeInOutCirc
	-----------------------------------------------------------
					#--#   0 <= pos <= 1   #--#		*/
// Init		
if(argument[0]==0) return argument[1];
var pos = argument[1];
var ret_pos = 0;
// Animations
if(argument[0]==1) {
	if(pos<0.5) ret_pos = 16 * pos * pos * pos * pos * pos;
	else ret_pos = 1 - (power(-2 * pos + 2, 5) / 2);
	return ret_pos;
}
if(argument[0]==2) {
	var c1 = 1.70158;
	var c3 = c1 + 1;
	ret_pos = c3 * pos * pos * pos - c1 * pos * pos;
	return ret_pos;
}
if(argument[0]==3) {
	if(pos<0.5) ret_pos = (1 - sqrt(1 - power(2 * pos, 2))) / 2;
	else ret_pos = (sqrt(1 - power(-2 * pos + 2, 2)) + 1) / 2;
	return ret_pos;
}



