package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class BadEnd extends FlxState
{	

	var background:FlxSprite;
	
	var T1:FlxText;
	var T2:FlxText;
	var T3:FlxText;
	var _box:FlxSprite;
	
	var t1:Bool;
	var t2:Bool;
	var t3:Bool;
	var end:Bool;
	
	override public function create():Void
	{
		//load background graphic here
		background = new FlxSprite(0,0);

		background.loadGraphic("assets/images/bad ending.png", false);
		background.setGraphicSize(FlxG.width , FlxG.height);
		background.screenCenter();
		add(background);
		
		t1 = true;
		t2 = false;
		t3 = false;
		end = false;
		
		T1 = new FlxText(70, 370, 500);
		T1.moves = false;
		T1.setFormat("assets/data/munro.ttf", 20, FlxColor.WHITE, CENTER);
		T1.text = "Mayor: “Get out of my face, you monster. You’ve done nothing but hurt my people and I want you out of this town for good!”";
		
		T2 = new FlxText(70, 370, 500);
		T2.moves = false;
		T2.setFormat("assets/data/munro.ttf", 20, FlxColor.WHITE, CENTER);
		T2.text = "Your bad deeds did not go unnoticed in the town. The townspeople gathered in the night, pursuing you. ";
		
		T3 = new FlxText(70, 370, 500);
		T3.moves = false;
		T3.setFormat("assets/data/munro.ttf", 20, FlxColor.WHITE, CENTER);
		T3.text = "You tried to run, but were met with a dead end in an alley. There is no escape from the consequences of your actions.";
		
		_box = new FlxText(0, 330, 500);
		_box.loadGraphic("assets/images/box_v2b.png", false);
		add(_box);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		
		if (FlxG.keys.justPressed.SPACE)
		{
			if (t1)
			{
				t1 = false;
				t2 = true;
			}
			if (t2)
			{
				t2 = false;
				t3 = true;
			}
			if (t3)
			{
				t3 = false;
				end = true;
			}
		}
		
		if (t1)
		{
			add(T1);
		}
		if (t2)
		{
			remove(T1);
			add(T2);
		}
		if (t3)
		{
			remove(T2);
			add(T3);
		}
		
		
		if (end)
		{
			FlxG.switchState(new MenuState());
		}
		
		super.update(elapsed);
	}
	
}
