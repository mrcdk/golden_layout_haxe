package golden_layout;

@:publicFields
@:native('BrowserWindow')
extern class BrowserWindow extends EventEmitter<BWEvent> {
  var isInitialised(default, never):Bool;

  function new();

  function toConfig():Config;
  function getGlInstance():GoldenLayout;
  function getWindow():js.html.Window;
  function close():Void;
  function popIn():Void;
}

@:enum abstract BWEvent(String) from String to String {
  var Initialised = 'initialised';
  var Closed = 'closed';
}