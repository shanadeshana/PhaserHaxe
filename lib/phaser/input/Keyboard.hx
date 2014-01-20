package phaser.input;
import js.html.KeyboardEvent;
import phaser.core.Game;
import phaser.core.Signal;

@:native("Phaser.Keyboard")
@:publicFields
extern class Keyboard {
	function new(game:Game);
	var game:Game;
	var disabled:Bool;
	var callbackContext:Dynamic;
	var onDownCallback:KeyboardEvent->Void;
	var onUpCallback:KeyboardEvent->Void;
	function addCallbacks(context:Dynamic, onDown:KeyboardEvent->Void, ?onUp:KeyboardEvent->Void):Void;
	function addKey(keycode:Int):Key;
	function removeKey(keycode:Int):Key;
	function createCursorKeys(): { up:Key, down:Key, left:Key, right:Key };
	function start():Void;
	function stop():Void;
	@:overloading(function (keycode:Array<Int>):Void { } )
	function addKeyCapture(keycode:Int):Void;
	function removeKeyCapture(keycode:Int):Void;
	function clearCaptures():Void;
	function reset():Void;
	function justPressed(keycode:Int, ?duration:Float):Bool;
	function justReleased(keycode:Int, ?duration:Float):Bool;
	function isDown(keycode:Int):Bool;
/*
}

@:native("Phaser.Keyboard")
@:publicFields
extern class Keycode {
*/
	static var A(default, null):Int;
	static var B(default, null):Int;
	static var C(default, null):Int;
	static var D(default, null):Int;
	static var E(default, null):Int;
	static var F(default, null):Int;
	static var G(default, null):Int;
	static var H(default, null):Int;
	static var I(default, null):Int;
	static var J(default, null):Int;
	static var K(default, null):Int;
	static var L(default, null):Int;
	static var M(default, null):Int;
	static var N(default, null):Int;
	static var O(default, null):Int;
	static var P(default, null):Int;
	static var Q(default, null):Int;
	static var R(default, null):Int;
	static var S(default, null):Int;
	static var T(default, null):Int;
	static var U(default, null):Int;
	static var V(default, null):Int;
	static var W(default, null):Int;
	static var X(default, null):Int;
	static var Y(default, null):Int;
	static var Z(default, null):Int;
	static var ZERO(default, null):Int;
	static var ONE(default, null):Int;
	static var TWO(default, null):Int;
	static var THREE(default, null):Int;
	static var FOUR(default, null):Int;
	static var FIVE(default, null):Int;
	static var SIX(default, null):Int;
	static var SEVEN(default, null):Int;
	static var EIGHT(default, null):Int;
	static var NINE(default, null):Int;
	static var NUMPAD_0(default, null):Int;
	static var NUMPAD_1(default, null):Int;
	static var NUMPAD_2(default, null):Int;
	static var NUMPAD_3(default, null):Int;
	static var NUMPAD_4(default, null):Int;
	static var NUMPAD_5(default, null):Int;
	static var NUMPAD_6(default, null):Int;
	static var NUMPAD_7(default, null):Int;
	static var NUMPAD_8(default, null):Int;
	static var NUMPAD_9(default, null):Int;
	static var NUMPAD_MULTIPLY(default, null):Int;
	static var NUMPAD_ADD(default, null):Int;
	static var NUMPAD_ENTER(default, null):Int;
	static var NUMPAD_SUBTRACT(default, null):Int;
	static var NUMPAD_DECIMAL(default, null):Int;
	static var NUMPAD_DIVIDE(default, null):Int;
	static var F1(default, null):Int;
	static var F2(default, null):Int;
	static var F3(default, null):Int;
	static var F4(default, null):Int;
	static var F5(default, null):Int;
	static var F6(default, null):Int;
	static var F7(default, null):Int;
	static var F8(default, null):Int;
	static var F9(default, null):Int;
	static var F10(default, null):Int;
	static var F11(default, null):Int;
	static var F12(default, null):Int;
	static var F13(default, null):Int;
	static var F14(default, null):Int;
	static var F15(default, null):Int;
	static var COLON(default, null):Int;
	static var EQUALS(default, null):Int;
	static var UNDERSCORE(default, null):Int;
	static var QUESTION_MARK(default, null):Int;
	static var TILDE(default, null):Int;
	static var OPEN_BRACKET(default, null):Int;
	static var BACKWARD_SLASH(default, null):Int;
	static var CLOSED_BRACKET(default, null):Int;
	static var QUOTES(default, null):Int;
	static var BACKSPACE(default, null):Int;
	static var TAB(default, null):Int;
	static var CLEAR(default, null):Int;
	static var ENTER(default, null):Int;
	static var SHIFT(default, null):Int;
	static var CONTROL(default, null):Int;
	static var ALT(default, null):Int;
	static var CAPS_LOCK(default, null):Int;
	static var ESC(default, null):Int;
	static var SPACEBAR(default, null):Int;
	static var PAGE_UP(default, null):Int;
	static var PAGE_DOWN(default, null):Int;
	static var END(default, null):Int;
	static var HOME(default, null):Int;
	static var LEFT(default, null):Int;
	static var UP(default, null):Int;
	static var RIGHT(default, null):Int;
	static var DOWN(default, null):Int;
	static var INSERT(default, null):Int;
	static var DELETE(default, null):Int;
	static var HELP(default, null):Int;
	static var NUM_LOCK(default, null):Int;
}