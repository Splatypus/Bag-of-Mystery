package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/8-BIT WONDER.TTF", "assets/data/8-BIT WONDER.TTF");
			type.set ("assets/data/8-BIT WONDER.TTF", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/bad ending.png", "assets/images/bad ending.png");
			type.set ("assets/images/bad ending.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/box_v2.png", "assets/images/box_v2.png");
			type.set ("assets/images/box_v2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/credits page.png", "assets/images/credits page.png");
			type.set ("assets/images/credits page.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Credits.png", "assets/images/Credits.png");
			type.set ("assets/images/Credits.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/duck.png", "assets/images/duck.png");
			type.set ("assets/images/duck.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/giraffe house.png", "assets/images/giraffe house.png");
			type.set ("assets/images/giraffe house.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/good ending.png", "assets/images/good ending.png");
			type.set ("assets/images/good ending.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/house.png", "assets/images/house.png");
			type.set ("assets/images/house.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/HowToPlay.png", "assets/images/HowToPlay.png");
			type.set ("assets/images/HowToPlay.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/instruction screen.png", "assets/images/instruction screen.png");
			type.set ("assets/images/instruction screen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/map.png", "assets/images/map.png");
			type.set ("assets/images/map.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/neutral ending.png", "assets/images/neutral ending.png");
			type.set ("assets/images/neutral ending.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 1.png", "assets/images/npc 1.png");
			type.set ("assets/images/npc 1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 10.png", "assets/images/npc 10.png");
			type.set ("assets/images/npc 10.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 2.png", "assets/images/npc 2.png");
			type.set ("assets/images/npc 2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 3.png", "assets/images/npc 3.png");
			type.set ("assets/images/npc 3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 4.png", "assets/images/npc 4.png");
			type.set ("assets/images/npc 4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 5.png", "assets/images/npc 5.png");
			type.set ("assets/images/npc 5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 6.png", "assets/images/npc 6.png");
			type.set ("assets/images/npc 6.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 7.png", "assets/images/npc 7.png");
			type.set ("assets/images/npc 7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 8.png", "assets/images/npc 8.png");
			type.set ("assets/images/npc 8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/npc 9.png", "assets/images/npc 9.png");
			type.set ("assets/images/npc 9.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Play.png", "assets/images/Play.png");
			type.set ("assets/images/Play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/rat back sheet.png", "assets/images/rat back sheet.png");
			type.set ("assets/images/rat back sheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/rat front sheet.png", "assets/images/rat front sheet.png");
			type.set ("assets/images/rat front sheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/rat sheet.png", "assets/images/rat sheet.png");
			type.set ("assets/images/rat sheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/rat side sheet.png", "assets/images/rat side sheet.png");
			type.set ("assets/images/rat side sheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/titlecard.png", "assets/images/titlecard.png");
			type.set ("assets/images/titlecard.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/woodpecker house.png", "assets/images/woodpecker house.png");
			type.set ("assets/images/woodpecker house.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/music/Music.wav", "assets/music/Music.wav");
			type.set ("assets/music/Music.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/Door.wav", "assets/sounds/Door.wav");
			type.set ("assets/sounds/Door.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/Footstep.wav", "assets/sounds/Footstep.wav");
			type.set ("assets/sounds/Footstep.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/tiled/level.tmx", "assets/tiled/level.tmx");
			type.set ("assets/tiled/level.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
