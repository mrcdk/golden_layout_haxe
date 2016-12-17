package golden_layout;

import haxe.extern.EitherType;

typedef Config = {
  ?settings:Settings,
  ?dimensions:Dimensions,
  ?labels:Labels,
  ?content:Array<ItemConfig>,
}

typedef ItemConfig = {
  type:ComponentType,
  ?content:Array<ItemConfig>,
  ?width:Float,
  ?height:Float,
  ?id:EitherType<String, Array<String>>,
  ?isClosable:Bool,
  ?title:String,
  ?activeItemIndex:Int,
  ?componentName:String,
  ?componentState:{},
  #if react
  ?component:String,
  ?props:{},
  #end
  
}

typedef Settings = {
  ?hasHeaders:Bool,
  ?constrainDragToContainer:Bool,
  ?reorderEnabled:Bool,
  ?selectionEnabled:Bool,
  ?popoutWholeStack:Bool,
  ?blockedPopoutsThrowError:Bool,
  ?closePopoutsOnUnload:Bool,
  ?showPopoutIcon:Bool,
  ?showMaximiseIcon:Bool,
  ?showCloseIcon:Bool,
}

typedef Dimensions = {
  ?borderWidth:Float,
  ?minItemHeight:Float,
  ?minItemWidth:Float,
  ?headerHeight:Float,
  ?dragProxyWidth:Float,
  ?dragProxyHeight:Float,
}

typedef Labels = {
  ?close:String,
  ?maximise:String,
  ?minimise:String,
  ?popout:String,
}

@:enum abstract ComponentType(String) from String to String {
  var Row = 'row';
  var Column = 'column';
  var Stack = 'stack';
  var Component = 'component';
}