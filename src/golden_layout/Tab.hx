package golden_layout;

@:publicFields
@:native('Tab')
extern class Tab {
  var isActive(default, never):Bool;
  var header(default, never):Header;
  var contentItem(default, never):ContentItem;
  var element(default, never):js.jquery.JQuery;
  var titleElement(default, never):js.jquery.JQuery;
  var closeElement(default, never):js.jquery.JQuery;

  function new();
  function setTitle(title:String):Void;
  function setActive(isActive:Bool):Void;

}