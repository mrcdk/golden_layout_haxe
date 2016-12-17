package golden_layout;

import haxe.extern.EitherType;

@:publicFields
@:native('ContentItem')
extern class ContentItem extends EventEmitter<CIEvent> {

  var config(default, never):Config.ItemConfig;
  var type(default, never):Config.ComponentType;
  var contentItems(default, never):Array<ContentItem>;
  var parent(default, never):ContentItem;
  var id(default, never):EitherType<String, Array<String>>;
  var isInitialised(default, never):Bool;
  var isMaximised(default, never):Bool;
  var isRoot(default, never):Bool;
  var isColumn(default, never):Bool;
  var isRow(default, never):Bool;
  var isStack(default, never):Bool;
  var isComponent(default, never):Bool;
  var layoutManager(default, never):GoldenLayout;
  var element(default, never):js.jquery.JQuery;
  var childElementContainer(default, never):js.jquery.JQuery;

  function new();

  function addChild(itemOrItemConfig:EitherType<Config.ItemConfig, ContentItem>, ?index:Int):Any;
  function removeChild(contentItem:ContentItem, ?keepChild:Bool):Any;
  function setSize():Void;
  function setTitle(title:String):Void;
  function callDownwards(functionName:String, ?functionArguments:Array<Any>, ?bottomUp:Bool, ?skipSelf:Bool):Void;
  function emitBubblingEvent(name:String):Void;
  function remove():Void;
  function popout():Void;
  function toggleMaximise():Void;
  function select():Void;
  function deselect():Void;
  function hasId(id:String):Bool;
  function setActiveContentItem(contentItem:ContentItem):Void;
  function getActiveContentItem():ContentItem;
  function addId(id:String):Void;
  function removeId(id:String):Void;
  function getItemsByFilter(func:haxe.Constraints.Function):Array<ContentItem>;
  function getItemsById(id:String):Array<ContentItem>;
  function getItemsByType(type:Config.ComponentType):Array<ContentItem>;
  function getComponentsByName(name:String):Array<ContentItem>;

}

@:enum abstract CIEvent(String) from String to String {
  var StateChanged = 'stateChanged';
  var TitleChanged = 'titleChanged';
  var ActiveContentItemChanged = 'activeContentItemChanged';
  var ItemDestroyed = 'itemDestroyed';
  var ItemCreated = 'itemCreated';
  var ComponentCreated = 'componentCreated';
  var RowCreated = 'rowCreated';
  var ColumnCreated = 'columnCreated';
  var StackCreated = 'stackCreated';
}