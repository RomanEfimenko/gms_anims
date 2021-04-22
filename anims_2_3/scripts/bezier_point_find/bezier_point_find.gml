function bezier_point_find() {
	/*		https://www.gmlscripts.com/forums/viewtopic.php?id=2056
			https://www.cat-in-web.ru/bezier-curves/
															*/
	/// bezier_point_find(lerp, p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y)
	/*  Lerp is a value from 0-1 to find on the line between p0 and p3
		p1 and p2 are the control points

		returns array (x,y)								*/

	/*

	var t   = argument0;
	var p0x = argument1;
	var p0y = argument2;
	var p1x = argument3;
	var p1y = argument4;
	var p2x = argument5;
	var p2y = argument6;
	var p3x = argument7;
	var p3y = argument8;
	//Precalculated power math
	var tt  = t  * t;
	var ttt = tt * t;
	var u   = 1  - t; //Inverted
	var uu  = u  * u;
	var uuu = uu * u;
	//Calculate the point
	var px =     uuu * p0x; //first term
	var py =     uuu * p0y;
	px += 3 * uu * t * p1x; //second term
	py += 3 * uu * t * p1y;
	px += 3 * u * tt * p2x; //third term 
	py += 3 * u * tt * p2y;
	px +=        ttt * p3x; //fourth term
	py +=        ttt * p3y;
	//Pack into an array
	var PA; PA[0] = px; PA[1] = py;
	return PA;

	*/


	///bezier_get_coord(x0, y0, x1, y1, x2, y2, x3, y3, t);
	//
	// returns a point within the defined bezier curve.
	//
	// x0   x of begining bezier vertex, real
	// y0   y of begining bezier vertex, real
	// x1   x of begining bezier actuator vertex, real
	// y1   y of begining bezier actuator vertex, real
	// x2   x of ending bezier actuator vertex, real
	// y2   y of ending bezier actuator vertex, real
	// x3   x of ending bezier vertex, real
	// y3   y of ending bezier vertex, real
	// t    point to return, real (normal)
	//
	/// GMLscripts.com/license

	var x0, y0, x1, y1, x2, y2, x3, y3, t, cx, cy, bx, by, ax, ay;
	x0 = argument[0];
	y0 = argument[1];
	x1 = argument[2];
	y1 = argument[3];
	x2 = argument[4];
	y2 = argument[5];
	x3 = argument[6];
	y3 = argument[7];
	t = argument[8];

	cx = 3*(x1-x0);
	cy = 3*(y1-y0);
	bx = 3*(x2-x1)-cx;
	by = 3*(y2-y1)-cy;
	ax = x3-x0-cx-bx;
	ay = y3-y0-cy-by;

	//return ax*power(t,3)+bx*sqr(t)+cx*t+x0;



	global.bgc_return_x=ax*power(t,3)+bx*sqr(t)+cx*t+x0;
	global.bgc_return_y=ay*power(t,3)+by*sqr(t)+cy*t+y0;




}
