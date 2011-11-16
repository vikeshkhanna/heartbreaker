//trace("Utility loaded");


package com.sixpack{
	import com.sixpack.Friend;
	
	public class SpecialFriend extends Friend
	{	
		public var nf_color:Number;
		public var nf_delay:Number;
		public var nf_sound:String;
		public var play_sound:Boolean;
		
		
	
		public function SpecialFriend(__id:String,__name:String,__nf_color:Number=0,__nf_delay:Number=0,__nf_sound:String="sound/heartbreaker.mp3",__play_sound=true)
		{
			super(__id,__name);
			is_special = true;
			nf_color = __nf_color;
			nf_delay = __nf_delay;
			nf_sound = __nf_sound;
			play_sound = __play_sound;
			/*Do nothing*/
		}
	
		public function copy(sf:SpecialFriend)
		{
			id=sf.id;
			friend_name = sf.friend_name;
			nf_color = sf.nf_color;
			nf_delay = sf.nf_delay;
			nf_sound = sf.nf_sound;
		}
		
		
		/*public function SpecialFriend(Friend friend,__nf_color:String,__nf_delay:int,__nf_sound:String)
		{
			super(friend.id,friend.friend_name,friend.photo_link,true);
			nf_color = __nf_color;
			nf_delay = __nf_delay;
			nf_sound = __nf_sound;
			
		}*/
	}
}
