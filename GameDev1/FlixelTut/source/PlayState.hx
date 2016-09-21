package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.display.FlxTiledSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.group.FlxGroup;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxObject;
import flixel.util.FlxColor;

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
	var _npc_mayor:NPC;
	
	var _text:FlxText;
	var _box:FlxSprite;
	var _shown:Bool;
	var _info:String;
	
	
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
		
		_shown = false;
		_text = new FlxText(_player.x - 220, _player.y + 160, 500);
		_text.moves = true;
		_text.setFormat("assets/data/8-BIT WONDER.TTF", 20, FlxColor.WHITE, CENTER);
		
		_npc_1 = new NPC(1825, 630, 30, 70, _player);
		_npc_1.immovable = true;
		_npc_1._dialogue = "Please help me, I’m dying of thirst. You’ve gotta have something in that bag of yours that’ll help me out.";
		_npc_1.set_sprite_path("assets/images/npc 1.png");
		_npc_1.load_sprite();
		add(_npc_1);

		_npc_2 = new NPC(1023, 500, 30, 70, _player);
		_npc_2.immovable = true;
		_npc_2 = new NPC(130, 120, 30, 70, _player);
		_npc_2.set_sprite_path("assets/images/npc 2.png");
		_npc_2.load_sprite();
		add(_npc_2);

		_npc_3 = new NPC(1450, 1175, 30, 70, _player);
		_npc_3.immovable = true;
		_npc_3._dialogue = "I want a puppy!";
		_npc_3.set_sprite_path("assets/images/npc 3.png");
		_npc_3.load_sprite();
		add(_npc_3);

		_npc_4 = new NPC(780, 650, 30, 70, _player);
		_npc_4.immovable = true;
		_npc_4._dialogue = "You got anything to get rid of a headache? It’s killing me.";
		_npc_4.set_sprite_path("assets/images/npc 4.png");
		_npc_4.load_sprite();
		add(_npc_4);

		_npc_5 = new NPC(1630, 770, 30, 70, _player);
		_npc_5.immovable = true;
		_npc_5._dialogue = "I totally forgot about my father’s birthday and I don’t have time to get him a gift. What do I do?";
		_npc_5.set_sprite_path("assets/images/npc 5.png");
		_npc_5.load_sprite();
		add(_npc_5);

		_npc_6 = new NPC(1500, 600, 30, 70, _player);
		_npc_6.immovable = true;
		_npc_6._dialogue = "I’m trying to repair my house, but I broke my hammer. Can you help me out?";
		_npc_6.set_sprite_path("assets/images/npc 6.png");
		_npc_6.load_sprite();
		add(_npc_6);

		_npc_7 = new NPC(1300, 900, 30, 70, _player);
		_npc_7.immovable = true;
		_npc_7._dialogue = "My husband loves collecting bugs, but I hate the creepy crawlers. They terrify me.";
		_npc_7.set_sprite_path("assets/images/npc 7.png");
		_npc_7.load_sprite();
		add(_npc_7);

		_npc_8 = new NPC(650, 1100, 30, 70, _player);
		_npc_8.immovable = true;
		_npc_8._dialogue = "Santa didn’t visit this year and I’m really sad. I just wanted a gift.";
		_npc_8.set_sprite_path("assets/images/npc 8.png");
		_npc_8.load_sprite();
		add(_npc_8);

		_npc_9 = new NPC(1700, 800, 30, 70, _player);
		_npc_9.immovable = true;
		_npc_9._dialogue = "My grandfather is ill, but just won’t die, and there’s a lot of inheritance just waiting around. You got something that’ll help me…’take care’ of him, if you get what I mean?";
		_npc_9.set_sprite_path("assets/images/npc 9.png");
		_npc_9.load_sprite();
		add(_npc_9);

		_npc_mayor = new NPC(1023, 1030, 30, 70, _player);
		_npc_mayor.immovable = true;
		_npc_mayor._dialogue = "Hey there. You got a face I don’t recognize. I’m going to go out on a limb and say that you’re new in town. I’m the mayor of this town. It isn’t much, but it’s ours. What brings you to these parts? There isn’t much in the way of tourism around here. ";
		_npc_mayor.set_sprite_path("assets/images/npc 10.png");
		_npc_mayor.load_sprite();
		add(_npc_mayor);

		_box = new FlxText(0, _player.y + 110, 500);
		_box.loadGraphic("assets/images/box_v2.png", false);
		_info = "UP/W, DOWN/S, LEFT/A, RIGHT/D, talk:SPACE";

		super.create();
	}
	
	public function range(p:Player, n:NPC): Bool
	{
		if (p.x - n.x <= 70 && p.x - n.x >= 0 && (p.y - n.y <= 20 && p.y - n.y >= -20))
		{
			if(p.getRot() == 180)
				return true;
		}
		if (n.x - p.x <= 70 && n.x - p.x >= 0 && (p.y - n.y <= 20 && p.y - n.y >= -20))
		{
			if(p.getRot() == 0)
				return true;
		}
		if (p.y - n.y <= 90 && p.y - n.y >= 0 && (p.x - n.x <= 20 && p.x - n.x >= -20))
		{
			if(p.getRot() == 270)
				return true;
		}
		if (n.y - p.y <= 90 && n.y - p.y >= 0 && (p.x - n.x <= 20 && p.x - n.x >= -20))
		{
			if(p.getRot() == 90)
				return true;
		}
		
		return false;
	}
	
	override public function update(elapsed:Float):Void
	{
		FlxG.collide(_player, stuff);
		FlxG.collide(_player, _npc_1);
		FlxG.collide(_player, _npc_2);
		FlxG.collide(_player, _npc_3);
		FlxG.collide(_player, _npc_4);
		FlxG.collide(_player, _npc_5);
		FlxG.collide(_player, _npc_6);
		FlxG.collide(_player, _npc_7);
		FlxG.collide(_player, _npc_8);
		FlxG.collide(_player, _npc_9);
		FlxG.collide(_player, _npc_mayor);
		
		_box.x = 0;
		_box.y = _player.y + 110;
		_text.x = _player.x - 220;
		_text.y = _player.y + 160;
		
		if (range(_player, _npc_1))
		{
			_text.text = _npc_1._dialogue;
		}
		else if (range(_player, _npc_2))
		{
			
			_text.text = _npc_2._dialogue;
		}
		else if (range(_player, _npc_3))
		{
			
			_text.text = _npc_3._dialogue;
		}
		else if (range(_player, _npc_4))
		{
			
			_text.text = _npc_4._dialogue;
		}
		else if (range(_player, _npc_5))
		{
			
			_text.text = _npc_5._dialogue;
		}
		else if (range(_player, _npc_6))
		{
			
			_text.text = _npc_6._dialogue;
		}
		else if (range(_player, _npc_7))
		{
			
			_text.text = _npc_7._dialogue;
		}
		else if (range(_player, _npc_8))
		{
			
			_text.text = _npc_8._dialogue;
		}
		else if (range(_player, _npc_9))
		{
			
			_text.text = _npc_9._dialogue;
		}
		else if (range(_player, _npc_mayor))
		{
			_text.text = _npc_mayor._dialogue;
		}
		else
		{
			_text.text = _info;
		}
		
		if (_shown)
		{
			add(_box);
			add(_text);
		}
		else
		{
			remove(_box);
			remove(_text);
		}
		
		if (FlxG.keys.justPressed.SPACE)
		{
			if (_shown)
				_shown = false;
			else
				_shown = true;
		}
		
		super.update(elapsed);
	}
}
