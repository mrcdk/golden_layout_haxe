package golden_layout;

import haxe.extern.Rest;
import haxe.Constraints.Function;

@:publicFields
@:native('EventEmitter')
extern class EventEmitter<T:String> {
  function new();

  function on(eventName:T, callback:Function, ?context:Any):Void;
  function emit(eventName:T, args:Rest<Any>):Void;
  function trigger(eventName:T, args:Rest<Any>):Void;
  function unbind(eventName:T, ?callback:Function, ?context:Any):Void;
  function off(eventName:T, ?callback:Function, ?context:Any):Void;
}