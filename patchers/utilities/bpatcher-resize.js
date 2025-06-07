

outlets = 2

function getsize()
{

	outlet(0, this.patcher.box.rect);
	
}

function resize()
{
	var a = arrayfromargs(messagename, arguments);

//	var rect = a[1], a[2], a[3], a[4];
	
//	post(a + "\n");
	
	var rect = this.patcher.box.rect;
  	var x = rect[0];
  	var y = rect[1];
  	var w = rect[2] - x;
  	var h = rect[3] - y;

	// post("rect: " rect + "\n");
	
	// post("presentation mode : " + this.patcher.parentpatcher.getattr("presentation") + "\n");

	if ( this.patcher.parentpatcher.getattr("presentation") == 0 ) {
		// post("changed box rect" + "\n")
		//post(rect[0], rect[1], a[1] + x, a[2] + y + "\n");
		this.patcher.box.rect = [rect[0], rect[1], a[1] + x, a[2] + y];	
	}	
	
	var thevarname = this.patcher.box.varname;
	// making sure the bpatcher has a scripting name 
	if (thevarname=="")
		this.patcher.box.varname = thevarname = "bp" + Math.floor(Math.random() * Date.now());
	
	
	if (this.patcher.parentpatcher.getattr("presentation") == 1){
		// post("changed presentation box rect" + "\n")
		//post(rect[0], rect[1], a[1] + x, a[2] + y + "\n");
		// this.patcher.parentpatcher.message("script", "sendbox", thevarname, "presentation_position", rect[0], rect[1]);
		// this.patcher.parentpatcher.message("script", "sendbox", thevarname, "presentation_size", a[1] + x, a[2] + y);
		// this.patcher.parentpatcher.message("script", "sendbox", thevarname, "presentation_rect", rect[0], rect[1], a[1] + x, a[2] + y);
		this.patcher.parentpatcher.message("script", "sendbox", thevarname, "presentation_rect", rect[0], rect[1], a[1] , a[2] );

	}
	
}


function bang()
{
	
	
}

/*

var rect = this.patcher.box.rect;
  var x = rect[0];
  var y = rect[1];
  var w = rect[2] - x;
  var h = rect[3] - y;

  var defaultWH = 128;
  // bpatchers are by default created as 128×128 frames (tested in Max 6, 7 & 8)
  // testing for a match to this size approximates only resizing on creation
  if (w === defaultWH && h === defaultWH) {
    this.patcher.box.rect = [rect[0], rect[1], rect[0] + size[0], rect[1] + size[1]];
  }

  */ 