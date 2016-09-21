package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/tiled/coin.png", "assets/tiled/coin.png");
			type.set ("assets/tiled/coin.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tiled/decorations/capa01_A.png", "assets/tiled/decorations/capa01_A.png");
			type.set ("assets/tiled/decorations/capa01_A.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tiled/decorations/capa01_B.png", "assets/tiled/decorations/capa01_B.png");
			type.set ("assets/tiled/decorations/capa01_B.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tiled/level.png", "assets/tiled/level.png");
			type.set ("assets/tiled/level.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tiled/level.tmx", "assets/tiled/level.tmx");
			type.set ("assets/tiled/level.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/tiled/logo.png", "assets/tiled/logo.png");
			type.set ("assets/tiled/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
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
