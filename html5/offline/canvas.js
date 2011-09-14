	var x = 0;
	var y = 0;
	var red = 0, green = 0, blue = 0;
	var width = 40;
	var height = 40;
	var xspeed = 2;
	var yspeed = 5;
	
	var canvas = document.getElementById('picture');
	
	window.addEventListener('keydown', function(e) {
		var key = e.keyCode;
		console.log(key);
		if (key == 38) {
			
			y -= yspeed;
		} else if (key == 40) {
			y += yspeed;
		} else if (key == 37) {
			x -= xspeed;
		} else if (key == 39) {
			x += xspeed;
		}
		
		draw();
	}, false);
	
	var ctxt = canvas.getContext('2d');
	
	function draw() {
		ctxt.fillStyle = 'white';
		ctxt.fillRect(0, 0, canvas.width, canvas.height);
		ctxt.fillStyle = 'rgb(' + red + ',' + green + ',' + blue + ')';
		ctxt.fillRect(x, y, width, height);
	}
	
	var redspeed = 3;
	var greenspeed = 10;
	var bluespeed = 5;
	
	function fixColor(val, speed) {
		if (val <= 0 || val >= 255) {
			return  speed * -1;
		}
		
		return speed;
	}
	
	function move() {
		x += xspeed;
		y += yspeed;
		red += redspeed;
		green += greenspeed;
		blue += bluespeed;
		
		redspeed = fixColor(red, redspeed);
		greenspeed = fixColor(green, greenspeed);
		bluespeed = fixColor(blue, bluespeed);
		
		
		if (y == 0 || y + height == canvas.height) {
			yspeed *= -1;
		}
		
		if (x == 0 || x + width == canvas.width) {
			xspeed *= -1;
		}
	}
	
	setInterval(function() {
		draw();
		move();
	}, 50);
