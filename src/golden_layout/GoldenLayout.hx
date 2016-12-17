package golden_layout;

import haxe.extern.EitherType;

@:publicFields
@:native('GoldenLayout')
extern class GoldenLayout extends EventEmitter<GLEvent> {

  var root(default, never):ContentItem;
  var container(default, never):js.jquery.JQuery;
  var isInitialised(default, never):Bool;
  var config(default, never):Config;
  var selectedItem(default, never):ContentItem;
  var width(default, never):Float;
  var height(default, never):Float;
  var openPopouts(default, never):Array<BrowserWindow>;
  var isSubWindow(default, never):Bool;
  var eventHub(default, never):EventEmitter<String>;


  function new(config:Config, ?container:EitherType<js.html.Element, js.jquery.JQuery>);

  @:overload(function(name:String, compoment:Container->Any->Any):Void {})
  function registerComponent(name:String, component:Container->Any->Void):Void;

  function init():Void;
  function toConfig():Config;
  function getComponent(name:String):Container;
  function updateSize(?width:Int, ?height:Int):Void;
  function destroy():Void;
  function createComponentItem(itemConfiguration:Any, ?parent:ContentItem):ContentItem;
  function createPopout(configOrContentItem:EitherType<Config, ContentItem>, dimensions:Any, ?parentId:String, ?indexInParent:Int):Any;
  function createDragSource(element:EitherType<js.html.Element, js.jquery.JQuery>, itemConfiguration:Any):Any;
  function selectItem(contentItem:ContentItem):Void;

  static function minifyConfig(config:Config):Config;
  static function unminifyConfig(config:Config):Config;

}

@:enum abstract GLEvent(String) from String to String {
  var Initialised = 'initialised';
  var StateChanged = 'stateChanged';
  var WindowOpened = 'windowOpened';
  var WindowClosed = 'windowClosed';
  var SelectionChanged = 'selectionChanged';
  var ItemDestroyed = 'itemDestroyed';
  var ItemCreated = 'itemCreated';
  var ComponentCreated = 'componentCreated';
  var RowCreated = 'rowCreated';
  var ColumnCreated = 'columnCreated';
  var StackCreated = 'stackCreated';
  var TabCreated = 'tabCreated';
}