package;

#if !macro
import Paths;
//Mobile Controls
 import mobile.flixel.FlxHitbox;
 import mobile.flixel.FlxVirtualPad;
 import mobile.flixel.input.FlxMobileInputID;
 import mobile.backend.SUtil;
 import mobile.backend.MobileScaleMode;
 
 //Android
 #if android
 import extension.androidtools.content.Context as AndroidContext;
 import extension.androidtools.widget.Toast as AndroidToast;
 import extension.androidtools.os.Environment as AndroidEnvironment;
 import extension.androidtools.Permissions as AndroidPermissions;
 import extension.androidtools.Settings as AndroidSettings;
 import extension.androidtools.Tools as AndroidTools;
 import extension.androidtools.os.Build.VERSION as AndroidVersion;
 import extension.androidtools.os.Build.VERSION_CODES as AndroidVersionCode;
 #end
 
//Flixel
import flixel.sound.FlxSound;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxDestroyUtil;

using StringTools;
#end
