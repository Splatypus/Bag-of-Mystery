package;

import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxObject;
import flixel.FlxG;
import flixel.FlxSprite;


/*
	This npc class stores:

		* name of the NPC (if applicable)
		* choices for the player
		* values of choices
		* dialogue text
		* sprite path of the NPC
	
	Instantiate in <PlayState> to create an NPC in the map;
*/


class NPC extends FlxSprite
{
	
	/* Private Variables Area: */
	
	public var _dialogue:String;
	public var _good_choice:String;
	public var _neutral_choice:String;
	public var _evil_choice:String;
	public var _optional_choice:String;
	

	private var _choice_good:Int;
	private var _choice_neutral:Int;
	private var _choice_evil:Int;
	private var _choice_optional:Int;

	private var _cleared:Bool;
	private var _talking:Bool;

	private var sprite_path:String;
	private var sprite_width:Int;
	private var sprite_height:Int;
	private var _player:Player;

	/* End of private variables area */

	//Constructor
	public function new(?X:Float=0, ?Y:Float=0, W:Int, H:Int, player:Player)
	{
		super(X, Y);
		_player = player;

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
			case 3:
				_choice_optional = val;
		}
	}

	/* Use this method to check if the task is completed */
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
				_cleared = true;
				return _choice_good;
			case 1:
				//neutral choice
				_cleared = true;
				return _choice_neutral;
			case 2:
				//evil choice
				_cleared = true;
				return _choice_evil;
			case 3:
				//optional choice
				_cleared = true;
				return _choice_optional;
		}
		
		return 0;
	}
	
	/*

	public function getText(): String
	{
		return "Hello World!\n";
	}
	*/


}