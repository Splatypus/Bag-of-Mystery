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
	public var _task:Array<String>;	//For stating the requirements

	private var _choice_good:Int;
	private var _choice_neutral:Int;
	private var _choice_evil:Int;

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

	//match morality values to choices

	//
	public function talk(): Void
	{
		//Create dialogue box before rendering text.
		/*
		var mytext:FlxText;
		mytext = new FlxText(0, 0, 500);
		mytext.text = "Hello World!"; 
		mytext.setFormat("assets/data/8-bit wonder.ttf", 20, FlxColor.WHITE, LEFT);
		mytext.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		add(mytext); 
		*/

		if(_cleared)
		{
			//show _dialogue_cleared text. Show words by words if possible. 

		}
		else
		{
			//show _dialogue text

			//show task text

			//give choices
			//Tasks:
			/*
				parse the dialogue and pass to _text

				Let the text and box follow camera

				detect the player position

				let player make choice

				Step arrangement.

			*/
		}


	}

	public function getText(): String
	{
		return "Hello World!\n";
	}


}