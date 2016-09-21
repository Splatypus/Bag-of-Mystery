package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxObject;

class PlayState extends FlxState
{
	var _player:Player;
	var level:FlxBackdrop;
	var stuff:FlxGroup;
	var house:FlxSprite;
	
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
<<<<<<< HEAD

		//make level
		//level = new TiledMap("assets/tiled/level.tmx");
		level = new FlxBackdrop("assets/images/map.png", 1, 1, true, true);
		add(level);
		FlxG.worldBounds.width = 2000;
		FlxG.worldBounds.height = 2000;
		//music
		FlxG.sound.playMusic("assets/music/Music.wav", 1, true);
		//instantiate the player
		_player = new Player(1005,1350);
		_player.allowCollisions = FlxObject.ANY;
=======
		_player = new Player(20, 20);
>>>>>>> 3696fc9e4d7ed2b8dde1cd81ef3ed400a20b1b75
		add(_player);
		//set camera to center on the player
		FlxG.camera.follow(_player);
<<<<<<< HEAD
		//add other shit
		house = new FlxSprite(1000,1000, "assets/images/duck.png");
		house.allowCollisions = FlxObject.ANY;
		house.immovable = true;
		stuff = new FlxGroup();
		stuff.add(house);
		add(stuff);

		
=======

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






>>>>>>> 3696fc9e4d7ed2b8dde1cd81ef3ed400a20b1b75
		super.create();
		//do world bounds with FlxG.worldBounds.set(FlxRect);
	}

	override public function update(elapsed:Float):Void
	{
		FlxG.collide(_player, stuff);
		super.update(elapsed);
	}
}
