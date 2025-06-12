#if VIDEOS_ALLOWED
import flixel.FlxG;
import flixel.input.keyboard.FlxKey;
import hxvlc.flixel.FlxVideo;
import openfl.events.KeyboardEvent;

class VideoHandler extends FlxVideo
{
	public var canSkip:Bool = false;
	public var skipKeys:Array<FlxKey> = [];

	public function new():Void
	{
		super();

		onEndReached.add(function()
		{
			dispose();
		});
	}

	override public function load(location:String, ?options:Array<String>):Bool
	{
		FlxG.stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
		return super.load(location, options);
	}

	override public function dispose():Void
	{
		FlxG.stage.removeEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
		super.dispose();
	}

	private function onKeyPress(event:KeyboardEvent):Void
	{
		if (!canSkip)
			return;

		if (skipKeys.contains(event.keyCode))
		{
			canSkip = false;
			onEndReached.dispatch();
		}
	}
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (canSkip)
		{
		        for (touch in FlxG.touches.list)
		        {
			        if (touch.justPressed)
			        {
			                canSkip = false;
			                onEndReached.dispatch();
					//break; do we need to break? idk
			        }
		        }
		}
	}
}
#end
