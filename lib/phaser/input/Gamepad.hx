package phaser.input;
import phaser.core.Game;

@:native("Phaser.Gamepad")
@:publicFields
extern class Gamepad {
	function new(game:Game);
	var disabled:Bool;
	var callbackContext:Dynamic;
	var onConnectCallback:Dynamic;
	var onDisconnectCallback:Dynamic;
	var onDownCallback:Dynamic;
	var onUpCallback:Dynamic;
	var onAxisCallback:Dynamic;
	var onFloatCallback:Dynamic;
	function addCallbacks(context:Dynamic, callbacks:Dynamic):Void;
	function start():Void;
	function setDeadZones(value:Float):Void;
	function stop():Void;
	function reset():Void;
	function justPressed(buttonCode:Int, duration:Int):Bool;
	function justReleased(buttonCode:Int, duration:Int):Bool;
	function isDown(buttonCode:Int):Bool;
	var active(default, null):Bool;
	var supported(default, null):Bool;
	var padsConnected(default, null):Bool;
	var pad1(default, null):Bool;
	var pad2(default, null):Bool;
	var pad3(default, null):Bool;
	var pad4(default, null):Bool;
	static var BUTTON_0(default, null):Int;
	static var BUTTON_1(default, null):Int;
	static var BUTTON_2(default, null):Int;
	static var BUTTON_3(default, null):Int;
	static var BUTTON_4(default, null):Int;
	static var BUTTON_5(default, null):Int;
	static var BUTTON_6(default, null):Int;
	static var BUTTON_7(default, null):Int;
	static var BUTTON_8(default, null):Int;
	static var BUTTON_9(default, null):Int;
	static var BUTTON_10(default, null):Int;
	static var BUTTON_11(default, null):Int;
	static var BUTTON_12(default, null):Int;
	static var BUTTON_13(default, null):Int;
	static var BUTTON_14(default, null):Int;
	static var BUTTON_15(default, null):Int;
	static var AXIS_0(default, null):Int;
	static var AXIS_1(default, null):Int;
	static var AXIS_2(default, null):Int;
	static var AXIS_3(default, null):Int;
	static var AXIS_4(default, null):Int;
	static var AXIS_5(default, null):Int;
	static var AXIS_6(default, null):Int;
	static var AXIS_7(default, null):Int;
	static var AXIS_8(default, null):Int;
	static var AXIS_9(default, null):Int;
	static var XBOX360_A(default, null):Int;
	static var XBOX360_B(default, null):Int;
	static var XBOX360_X(default, null):Int;
	static var XBOX360_Y(default, null):Int;
	static var XBOX360_LEFT_BUMPER(default, null):Int;
	static var XBOX360_RIGHT_BUMPER(default, null):Int;
	static var XBOX360_LEFT_TRIGGER(default, null):Int;
	static var XBOX360_RIGHT_TRIGGER(default, null):Int;
	static var XBOX360_BACK(default, null):Int;
	static var XBOX360_START(default, null):Int;
	static var XBOX360_STICK_LEFT_BUTTON(default, null):Int;
	static var XBOX360_STICK_RIGHT_BUTTON(default, null):Int;
	static var XBOX360_DPAD_LEFT(default, null):Int;
	static var XBOX360_DPAD_RIGHT(default, null):Int;
	static var XBOX360_DPAD_UP(default, null):Int;
	static var XBOX360_DPAD_DOWN(default, null):Int;
	static var XBOX360_STICK_LEFT_X(default, null):Int;
	static var XBOX360_STICK_LEFT_Y(default, null):Int;
	static var XBOX360_STICK_RIGHT_X(default, null):Int;
	static var XBOX360_STICK_RIGHT_Y(default, null):Int;
	
	private var _gamepads:Array<SinglePad>;
	private var _gamepadIndexMap:Dynamic;
	private var _rawPads:Dynamic;
	private var _active:Bool;
	private var _gamepadSupportAvailable:Bool;
	private var _prevRawGamepadTypes:Dynamic;
	private var _prevTimestamps:Dynamic;
	private var _ongamepadconnected:Dynamic;
	private var _gamepaddisconnected:Dynamic;
	private function update():Void;
	private function _pollGamepads():Void;
}