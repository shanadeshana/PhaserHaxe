package phaser.input;
import phaser.core.Game;
import phaser.gameobjects.Sprite;
import phaser.geom.Point;
import phaser.geom.Rectangle;

@:native("Phaser.InputHandler")
@:publicFields
extern class InputHandler {
	function new(sprite:Sprite);
	var sprite:Sprite;
	var game:Game;
	var enabled:Bool;
	var priorityID:Int;
	var useHandCursor:Bool;
	var isDragged:Bool;
	var allowHorizontalDrag:Bool;
	var allowVerticalDrag:Bool;
	var bringToTop:Bool;
	var snapOffset:Point;
	var snapOnDrag:Bool;
	var snapOnRelease:Bool;
	var snapX:Float;
	var snapY:Float;
	var snapOffsetX:Float;
	var snapOffsetY:Float;
	var pixelPerfect:Bool;
	var pixelPerfectAlpha:Int;
	var draggable:Bool;
	var boundsRect:Rectangle;
	var boundsSprite:Sprite;
	var consumePointerEvent:Bool;
	function start(?priority:Int, ?useHandCursor:Bool):Sprite;
	function reset():Void;
	function stop():Void;
	function destroy():Void;
	function pointerX(?index:Int):Float;
	function pointerY(?index:Int):Float;
	function pointerDown(?index:Int):Bool;
	function pointerUp(?index:Int):Bool;
	function pointerTimeDown(?index:Int):Float;
	function pointerTimeUp(?index:Int):Float;
	function pointerOver(?index:Int):Bool;
	function pointerOut(?index:Int):Bool;
	function pointerTimeOver(?index:Int):Float;
	function pointerTimeOut(?index:Int):Float;
	function pointerDragged(?index:Int):Bool;
	function checkPointerOver(pointer:Pointer):Bool;
	function checkPixel(x:Float, y:Float):Bool;
	function update(pointer:Pointer):Bool;
	function updateDrag(pointer:Pointer):Bool;
	function justOver(?pointer:Pointer, ?delay:Float):Bool;
	function justOut(?pointer:Pointer, ?delay:Float):Bool;
	function justPressed(?pointer:Pointer, ?delay:Float):Bool;
	function justReleased(?pointer:Pointer, ?delay:Float):Bool;
	function overDuration(?pointerIndex:Int):Float;
	function downDuration(?pointerIndex:Int):Float;
	function enableDrag(?lockCenter:Bool, ?bringToTop:Bool, ?pixelPerfect:Bool, ?alphaThreshold:Int, ?boundsRect:Rectangle, ?boundsSprite:Sprite):Void;
	function disableDrag():Void;
	function startDrag(pointer:Pointer):Void;
	function stopDrag(pointer:Pointer):Void;
	function setDragLock(?allowHorizontal:Bool, ?allowVertical:Bool):Void;
	function enableSnap(snapX:Float, snapY:Float, ?onDrag:Bool, ?onRelease:Bool, ?snappOffsetX:Float, ?snappOffsetY:Float):Void;
	function disableSnap():Void;
	function checkBoundsRect():Void;
	function checkBoundsSprite():Void;
	
	private var _tempPoint:Point;
	private var _pointerData:Dynamic;
	private function _pointerOverHandler(pointer:Pointer):Void;
	private function _pointerOutHandler(pointer:Pointer):Void;
	private function _touchedHandler(pointer:Pointer):Void;
	private function _releasedHandler(pointer:Pointer):Void;
}