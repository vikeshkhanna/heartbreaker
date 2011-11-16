//trace("Utility loaded");

package com.sixpack{
	import flash.display.Bitmap;

	public class Friend extends Object
	{	
		public var id:String;
		public var friend_name:String;
		public var is_special:Boolean;
		public var chat_status:uint;
		public var has_blocked:Boolean;

		public static var CHAT_OFFLINE:uint = 0;
		public static var CHAT_ACTIVE:uint = 1;
		public static var CHAT_IDLE:uint = 2;
		public static var COLORS:Array = new Array({label:"Black",data:"0x000000"},
												   {label:"Maroon",data:"0xbb1111"},
												   {label:"Blue",data:"0x1111bb"},
												   {label:"Green",data:"0x11bb11"}); 
		
		public static var DELAY:Array = new Array({label:"Until user closes",data:0},
												  {label:"5",data:5},
												  {label:"10",data:10},
												  {label:"15",data:15}); 
		
		
		public function Friend(__id:String,__name:String,__is_special:Boolean=false,__chat_status:uint=0,__has_blocked:Boolean=false)
		{
			id = __id;
			friend_name =  __name;
			is_special = __is_special;
			chat_status = __chat_status;
			has_blocked=__has_blocked;
			
			/*Do nothing*/
		}
		
		public function get_first_name():String
		{
				return (friend_name.split(" ") as Array)[0];
			
		}
	
	}

}
