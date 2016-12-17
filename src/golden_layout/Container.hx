package golden_layout;

import js.jquery.JQuery;

@:publicFields
@:native('Container')
extern class Container extends EventEmitter<ContainerEvent> {

  var width(default, never):Float;
  var height(default, never):Float;
  var parent(default, never):ContentItem;
  var tab(default, never):Tab;
  var title(default, never):String;
  var layoutManager(default, never):GoldenLayout;
  var isHidden(default, never):Bool;

  function new();

  function getElement():JQuery;
  function setState(state:Any):Void;
  function extendState(state:Any):Void;
  function getState():Any;
  function hide():Bool;
  function show():Bool;
  function setSize(width:Float, height:Float):Void;
  function setTitle(title:String):Void;
  function close():Bool;
}

@:enum abstract ContainerEvent(String) from String to String {
  var Open = 'open';
  var Resize = 'resize';
  var Destroy = 'destroy';
  var Close = 'close';
  var Tab = 'tab';
  var Hide = 'hide';
  var Show = 'show';
}