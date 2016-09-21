package;

import flixel.text.FlxText;
import flixel.FlxObject;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;

/*
	This npc class stores:

		*name of the NPC
		*choices for the player
		*values of choices
		*dialogue text
		*sprite of the NPC
	
	Instantiate the class to create an NPC in the environment;

*/


class NPC extends FlxSprite
{
	
	//Private Variables Area:

	//preset choices
	//value for choices
	//preset text for dialogue
	//Name of the NPC
	//Bool: Task completed
	
	private var _dialogue:Array<String>;
	private var _dialogue_cleared:Array<String>;
	private var _task:Array<String>;	//For stating the requirements

	private var _choice_good:Int;
	private var _choice_neutral:Int;
	private var _choice_evil:Int;

	private var _cleared:Bool;
	private var _talking:Bool;

	private var sprite_path:String;
	private var sprite_width:Int;
	private var sprite_height:Int;

	var rot:Float = 0;

	//Constructor
	public function new(?X:Float=0, ?Y:Float=0, W:Int, H:Int)
	{
		super(X, Y);
		_cleared = false;
		_talking = false;
		sprite_width = W;
		sprite_height = H;

	}

	public function set_sprite_path(p:String):Void
	{
		sprite_path = p;
	}

	
	public function load_sprite():Bool
	{
		loadGraphic(sprite_path, false, sprite_width, sprite_height);
		return true;
	}
	

	public function set_value(choice: Int, val: Int): Void
	{
		switch(choice)
		{
			case 0:
				_choice_good = val;
			case 1:
				_choice_neutral = val;
			case 2:
				_choice_evil = val;
		}
	}

	public function status(): Bool
	{
		return _cleared;
	}

	public function make_choice(choice: Int): Int
	{
		switch(choice)
		{
			case 0:
				//good choice
				return _choice_good;
			case 1:
				//neutral choice
				return _choice_neutral;
			case 2:
				//evil choice
				return _choice_evil;
		}
		return 0;
	}


	//face to the player when talking

	//match choice value to choices

	//
	public function talking(): Void
	{
		if(_cleared)
		{
			//show _dialogue_cleared text. Show words by words if possible. 

		}
		else
		{
			//show _dialogue text

			//show task text

			//give choices
		}

	}


}