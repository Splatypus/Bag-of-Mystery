package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxObject;

class PlayState extends FlxState
{
	var _player:Player;
	var level:FlxBackdrop;
	var stuff:FlxGroup;
	var house:FlxSprite;
	
	override public function create():Void
	{

		//make level
		//level = new TiledMap("assets/tiled/level.tmx");
		level = new FlxBackdrop("assets/images/map.png", 1, 1, true, true);
		add(level);
		FlxG.worldBounds.width = 2000;
		FlxG.worldBounds.height = 2000;
		//music
		FlxG.sound.playMusic("assets/music/Music.wav", 1, true);
		//instantiate the player
		_player = new Player(1005,1350);
		_player.allowCollisions = FlxObject.ANY;
		add(_player);
		//set camera to center on the player
		FlxG.camera.follow(_player);
		//add other shit
		house = new FlxSprite(1000,1000, "assets/images/duck.png");
		house.allowCollisions = FlxObject.ANY;
		house.immovable = true;
		stuff = new FlxGroup();
		stuff.add(house);
		add(stuff);

		
		super.create();
		//do world bounds with FlxG.worldBounds.set(FlxRect);
	}

	override public function update(elapsed:Float):Void
	{
		FlxG.collide(_player, stuff);
		super.update(elapsed);
	}
}
