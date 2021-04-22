function inout_quad() {
	// inout_quad ()
	//function(t, b, c, d) {
	var t = argument[0], b = argument[1], c = argument[2], d = argument[3];

	/*
	var ts = (t = t / d) * t;
	var tc = ts * t;
	return abs(b + c*(6*tc*ts + -15*ts*ts + 10*tc));
	*/



	t = t / (d/2.0);
	if (t < 1.0) {
		return c/2.0*t*t + b;
	}
	t--;
	return -c/2.0 * (t*(t-2.0) - 1.0) + b;


}
