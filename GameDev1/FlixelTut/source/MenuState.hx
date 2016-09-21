package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.ui.FlxSpriteButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	var _playButton:FlxButton;
	var tutButton:FlxButton;
	var creditsButton:FlxButton;
	var background:FlxSprite;
	
	override public function create():Void
	{
		//load background graphic here
		background = new FlxSprite(0,0);

		background.loadGraphic("assets/images/titlecard.png", false, 2100, 1500);
		background.setGraphicSize(FlxG.width , FlxG.height);
		background.screenCenter();
		add(background);
		_playButton  = new FlxButton(0,0, "", clickPlay);
		_playButton.screenCenter();
		_playButton.x -= 200;
		_playButton.y += 50;
		_playButton.loadGraphic("assets/images/Play.png");
		add(_playButton);
		
		tutButton  = new FlxButton(0,0, "", clickTut);
		tutButton.screenCenter();
		tutButton.x -= 200;
		tutButton.y += 120;
		tutButton.loadGraphic("assets/images/HowToPlay.png");
		add(tutButton);

		creditsButton  = new FlxButton(0,0, "", clickCredits);
		creditsButton.screenCenter();
		creditsButton.x -= 200;
		creditsButton.y += 190;
		creditsButton.loadGraphic("assets/images/Credits.png");
		add(creditsButton);

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
	function clickTut():Void{
		FlxG.switchState(new TutState());

	}
	function clickCredits():Void{
		FlxG.switchState(new CreditState());

	}
}
