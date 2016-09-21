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
	var house1:FlxSprite;
	var house2:FlxSprite;
	var house3:FlxSprite;
	var house4:FlxSprite;
	var house5:FlxSprite;
	var wall1:FlxObject;
	var wall2:FlxObject;
	var wall3:FlxObject;
	var wall4:FlxObject;
	
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

		//make level
		//level = new TiledMap("assets/tiled/level.tmx");
		level = new FlxBackdrop("assets/images/map.png", 1, 1, true, true);
		add(level);
		FlxG.worldBounds.width = 3000;
		FlxG.worldBounds.height = 3000;
		//music
		FlxG.sound.playMusic("assets/music/Music.wav", 1, true);
		//instantiate the player
		_player = new Player(1005,1350);
		_player.allowCollisions = FlxObject.ANY;
		add(_player);
		//set camera to center on the player
		FlxG.camera.follow(_player);

		//objects in world
		house = new FlxSprite(950,750, "assets/images/house.png");
		house.immovable = true;

		house1 = new FlxSprite(460,975, "assets/images/woodpecker house.png");
		house1.immovable = true;

		house2 = new FlxSprite(825,475, "assets/images/giraffe house.png");
		house2.immovable = true;

		house3 = new FlxSprite(1450,1100, "assets/images/giraffe house.png");
		house3.immovable = true;

		house4 = new FlxSprite(1900,475, "assets/images/giraffe house.png");
		house4.immovable = true;

		house5 = new FlxSprite(1350,560, "assets/images/giraffe house.png");
		house5.immovable = true;

		wall1 = new FlxObject(200, 1420, 2000, 10);
		wall1.immovable = true;
		wall2 = new FlxObject(250, 200, 10, 2000);
		wall2.immovable = true;
		wall3 = new FlxObject(200, 250, 2000, 10);
		wall3.immovable = true;
		wall4 = new FlxObject(2150, 200, 10, 2000);
		wall4.immovable = true;

		stuff = new FlxGroup();
		stuff.add(house);
		stuff.add(house1);
		stuff.add(house2);
		stuff.add(house3);
		stuff.add(house4);
		stuff.add(house5);
		stuff.add(wall1);
		stuff.add(wall2);
		stuff.add(wall3);
		stuff.add(wall4);
		add(stuff);

		

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
		FlxG.collide(_player, stuff);
		super.update(elapsed);
	}
}
