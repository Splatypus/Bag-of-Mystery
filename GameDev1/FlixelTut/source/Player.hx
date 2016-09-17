 package;

 import flixel.FlxSprite;
 import flixel.system.FlxAssets.FlxGraphicAsset;
 import flixel.util.FlxColor;
 import flixel.FlxG;
 import flixel.math.FlxPoint;
 import flixel.FlxObject;

 class Player extends FlxSprite
 {

	 //your morality 0-100. <33 is evil, >33 and <66 is neutral, >66 is good.
	 var morality:Int = 50;
	 var canMove:Bool = true;

	 var speed:Float = 200;
	 var _rot: Float = 0;
	 // helper variables to be able to tell which keys are pressed
	 var _up:Bool = false;
	 var _down:Bool = false;
	 var _left:Bool = false;
	 var _right:Bool = false;
     public function new(?X:Float=0, ?Y:Float=0)
     {
         super(X, Y);
		 //makeGraphic(16,16, FlxColor.GREEN);
		 loadGraphic("assets/images/duck.png", true, 100, 114);
		 // setFacingFlip(direction, flipx, flipy)
		 setFacingFlip(FlxObject.LEFT, true, false);
		 setFacingFlip(FlxObject.RIGHT, false, false);
		 animation.add("walk", [0,1,0,2], 5, true);
		 drag.x = drag.y = 1600;
     }
	 
	 override public function update(elapsed:Float):Void
	 {
		 if(canMove == true){ //this will be set false when talking to someone, or during cutscenes etc
		 	movement();
		 }
		 //if overlapped with an interaction zone, check if Space is pressed and then interact
		 //use if(overlaps(object, false) && FlxG.keys.anyPressed([F, SPACEBAR])){run interact script } might be SPACE or SPACEBAR. 
		 //could even run overlapPoint(point, false) here if we dont need a large hitbox
		 //these scripts should probably be on the object instead and check if the player is overlapping them. Easier than having the player check every point in the world when you hit F
		 //Then they can run their own unique interact scripts that they have attached. 
		 //For entering building, simply move the player somewhere else on the map where the indoors sprite is so we dont have to load a new scene
		 super.update(elapsed);
	 }

	 public function changeMorality(difference:Int):Void
	 { //morality scale for different endings. Between 0-100, cutoffs at 33, 66. low is evil, mid neutral, high good
		 morality += difference;
		 if(morality < 0){
			 morality = 0;
		 }
		 if(morality > 100){
			 morality = 100;
		 }
	 }
	 
	 public function getMorality():Int
	 {
		 return morality;
	 }

	 function movement():Void
	 {
		 _up = FlxG.keys.anyPressed([UP, W]);
		 _down = FlxG.keys.anyPressed([DOWN, S]);
		 _left = FlxG.keys.anyPressed([LEFT, A]);
		 _right = FlxG.keys.anyPressed([RIGHT, D]);
		 
		 // cancel out opposing directions
		 if (_up && _down){
		 	_up = _down = false;
		 }
		 if (_left && _right){
		 	_left = _right = false;
		 }
		 
		 if (_up || _down || _left || _right){
			 if (_left)
			 {
				 _rot = 180;
				 facing = FlxObject.LEFT;
				 if (_up) _rot += 45;
				 else if (_down) _rot -= 45;
			 }
			 else if (_right)
			 {
				 _rot = 0;
				 facing = FlxObject.RIGHT;
				 if (_up) _rot -= 45;
				 else if (_down) _rot += 45;
			 }
			 else if (_down) _rot = 90;
			 else if (_up) _rot = 270;
			 
		 	velocity.set(speed,0);
			velocity.rotate(new FlxPoint(0,0), _rot);
		 }
		 if (velocity.x != 0 || velocity.y != 0){
			 animation.play("walk");
		 }
		 else animation.stop();
	 }
 }