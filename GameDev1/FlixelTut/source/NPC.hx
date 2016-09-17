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

	private var _choice_good:Int32;
	private var _choice_neutral:Int32;
	private var _choice_evil:Int32;

	private var _cleared:Bool;
	private var _talking:Bool;

	private var npc_sprite = new FlxSprite();
	private var sprite_path:String;

	var rot:Float = 0;

	//Constructor
	public function new()
	{
		_cleared = false;
		_talking = false;
	}

	public function set_sprite_path(p:String):Void
	{
		sprite_path = p;
	}

	public function load_sprite():Bool
	{
		if(npc_sprite = loadGraphic(sprite_path))
		{
			add(npc_sprite);
			return true;
		}
		else
		{
			return false;
		}
	}

	public function set_value(choice: Int32, val: Int32): Void
	{
		switch(choice):
			case 0:
				_choice_good = val;
			case 1:
				_choice_neutral = val;
			case 2:
				_choice_evil = val;
	}

	public function status(): Bool
	{
		return _cleared;
	}

	public function make_choice(choice: Int32): Int32
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
	}


	//face to the player when talking

	//match choice value to choices

	//
	public function talking(): Void
	{
		if(_cleared)
		{
			//show _dialogue_cleared text
		}
		else
		{
			//show _dialogue text

			//show task text

			//give choices
		}

	}


}