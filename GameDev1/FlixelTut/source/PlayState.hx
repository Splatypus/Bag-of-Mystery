package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	var _player:Player;
	
	override public function create():Void
	{
		//music
		FlxG.sound.playMusic("assets/music/Music.wav", 1, true);
		//instantiate the player
		_player = new Player(20,20);
		//_player.allowCollisions = ANY;
		add(_player);
		//set camera to center on the player
		FlxG.camera.follow(_player);
		super.create();
		//do world bounds with FlxG.worldBounds.set(FlxRect);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
