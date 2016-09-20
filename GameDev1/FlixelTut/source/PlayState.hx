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
	
	var _npc_1:NPC;
	var _npc_2:NPC;
	var _npc_3:NPC;
	var _npc_4:NPC;
	var _npc_5:NPC;
	var _npc_6:NPC;
	var _npc_7:NPC;
	var _npc_8:NPC;
	var _npc_9:NPC;
	
	override public function create():Void
	{
		_player = new Player(20, 20);
		add(_player);
		FlxG.camera.follow(_player);

		/* NPC Creation Section */
		_npc_1 = new NPC(50, 260, 30, 70);
		_npc_1.set_sprite_path("assets/images/npc 1.png");
		_npc_1.load_sprite();
		add(_npc_1);

		_npc_2 = new NPC(130, 120, 30, 70);
		_npc_2.set_sprite_path("assets/images/npc 2.png");
		_npc_2.load_sprite();
		add(_npc_2);

		_npc_3 = new NPC(200, 50, 30, 70);
		_npc_3.set_sprite_path("assets/images/npc 3.png");
		_npc_3.load_sprite();
		add(_npc_3);

		_npc_4 = new NPC(20, 0, 30, 70);
		_npc_4.set_sprite_path("assets/images/npc 4.png");
		_npc_4.load_sprite();
		add(_npc_4);

		_npc_5 = new NPC(300, 150, 30, 70);
		_npc_5.set_sprite_path("assets/images/npc 5.png");
		_npc_5.load_sprite();
		add(_npc_5);

		_npc_6 = new NPC(80, 250, 30, 70);
		_npc_6.set_sprite_path("assets/images/npc 6.png");
		_npc_6.load_sprite();
		add(_npc_6);

		_npc_7 = new NPC(160, 333, 30, 70);
		_npc_7.set_sprite_path("assets/images/npc 7.png");
		_npc_7.load_sprite();
		add(_npc_7);

		_npc_8 = new NPC(500, 300, 30, 70);
		_npc_8.set_sprite_path("assets/images/npc 8.png");
		_npc_8.load_sprite();
		add(_npc_8);

		_npc_9 = new NPC(500, 360, 30, 70);
		_npc_9.set_sprite_path("assets/images/npc 9.png");
		_npc_9.load_sprite();
		add(_npc_9);






		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
