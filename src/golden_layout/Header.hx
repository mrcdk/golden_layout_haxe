package golden_layout;

@:publicFields
@:native('Header')
extern class Header {
  var layoutManger(default, never):GoldenLayout;
  var parent(default, never):Container;
  var tabs(default, never):Array<Tab>;
  var activeContentItem(default, never):ContentItem;
  var element(default, never):js.jquery.JQuery;
  var tabsContainer(default, never):js.jquery.JQuery;
  var controlsContainer(default, never):js.jquery.JQuery;

  function new();

  function setActiveContentItem(contentItem:ContentItem):Void;
  function createTab(contentItem:ContentItem, index:Int):Tab;
  function removeTab(contentItem:ContentItem):Void;
}