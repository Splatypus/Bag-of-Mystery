package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.ui.FlxSpriteButton;
import flixel.math.FlxMath;

class CreditState extends FlxState
{
	var back:FlxButton;
	var background:FlxSprite;
	
	override public function create():Void
	{
		//load background graphic here
		background = new FlxSprite(0,0);

		background.loadGraphic("assets/images/credits page.png", false, 2100, 1500);
		background.setGraphicSize(FlxG.width , FlxG.height);
		background.screenCenter();
		add(background);
		back  = new FlxButton(0,0, "Back", clickBack);
		back.screenCenter();
		back.x-=230;
		back.y-=200;
		add(back);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	function clickBack():Void
	{
		// switch to menu scene!
		FlxG.switchState(new MenuState());
	}
}
