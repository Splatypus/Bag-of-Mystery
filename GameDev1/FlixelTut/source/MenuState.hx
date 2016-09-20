package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	var _playButton:FlxButton;
	var background:FlxSprite;
	
	override public function create():Void
	{
		//load background graphic here
		background = new FlxSprite(0,0);

		background.loadGraphic("assets/images/titlecard.png", false, 2100, 1500);
		background.setGraphicSize(FlxG.width , FlxG.height);
		background.screenCenter();
		add(background);
		_playButton  = new FlxButton(0,0, "Play", clickPlay);
		_playButton.screenCenter();
		add(_playButton);
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	function clickPlay():Void
	{
		// switch to play scene!
		FlxG.switchState(new PlayState());
	}
}
