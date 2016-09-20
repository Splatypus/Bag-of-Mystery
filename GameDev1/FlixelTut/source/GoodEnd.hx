package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class GoodEnd extends FlxState
{	

	var background:FlxSprite;

	override public function create():Void
	{
		//load background graphic here
		background = new FlxSprite(0,0);

		background.loadGraphic("assets/images/good ending.png", false);
		background.setGraphicSize(FlxG.width , FlxG.height);
		background.screenCenter();
		add(background);
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
}
