package com.sixpack
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.text.FontStyle;
	import flash.display.MovieClip;
	import flash.text.AntiAliasType;
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Vikesh Khanna   
	 * @Email : khanna.vikesh@gmail.com
	 * @company Zigndog
	 * @date 29th September 2009
	 */
	
	
	public class Utils
	{
		public static function createSprite(__width:Number,__height:Number,color:Number = 0x000000,alpha:Number = 1):Sprite
		{
		var sprite:Sprite = new Sprite();
		
		sprite.graphics.beginFill(color,alpha);
		sprite.graphics.lineTo(__width, 0);
		sprite.graphics.lineTo(__width,__height);
		sprite.graphics.lineTo(0, __height);
		sprite.graphics.endFill();
		
		return sprite;
		}
		
		
		
		public static function createTextFormat(color:Number = 0x000000,size:Number = 12,font:String="Arial",bool_bold:Boolean = false,align:String="center"):TextFormat
		{
				var fmt:TextFormat = new TextFormat();
				fmt.size = size;
				fmt.color = color;
				fmt.font = font;
				fmt.bold = bool_bold;
				
				
				if(align=="center")
					fmt.align = TextFormatAlign.CENTER;
				else if (align == "left")
					fmt.align = TextFormatAlign.LEFT;
				else if (align == "right")
					fmt.align = TextFormatAlign.RIGHT;
				else if (align == "justify")
					fmt.align = TextFormatAlign.JUSTIFY;
				
				
				return fmt;	
		}
		
		public static function createTextField(width:Number, height:Number,text:String = ""):TextField
		{
				var txt:TextField = new TextField();
				
				txt.antiAliasType = AntiAliasType.ADVANCED;
				txt.htmlText = text;
				txt.width  = width;
				txt.height = height;
				
				return txt;
		}
		
		
		
		public static function fadeOut(event:Event):void
		{
			
				var mc:MovieClip = event.currentTarget as MovieClip;
				mc.alpha -= 0.1;
				
				if (mc.alpha <= 0)
					mc.removeEventListener(Event.ENTER_FRAME, fadeOut);
			
		}
		
		public static function fadeIn(event:Event):void
		{
				var mc:MovieClip = event.currentTarget as MovieClip;
				mc.alpha += 0.1;
				
				if (mc.alpha >= 1)
					mc.removeEventListener(Event.ENTER_FRAME, fadeIn);
		}

		public static function useHTML(txt2:String):String
		{	
				var pattern_left:RegExp = /{/g;
				var pattern_right:RegExp = /}/g;
				
				var txt:String=txt2;
				txt = txt.replace(pattern_left,"<");
				txt = txt.replace(pattern_right,">");
			//trace(txt);
			return txt;
		}
		
		public static function validateEmail(emailTxt:String):Boolean
		{
			if (emailTxt.length == 0)
				return false;
			
			if (emailTxt.indexOf("@") == -1)
				return false;
			
			if (emailTxt.indexOf(".") == -1)
				return false;
			
			if (Math.abs(emailTxt.indexOf("@") - emailTxt.indexOf(".")) == 1)
				return false;
			
			if (emailTxt.indexOf(".") == emailTxt.length - 1)
				return false;
			
			if (emailTxt.lastIndexOf(".") < emailTxt.indexOf("@"))
				return false;
				
			return true;
		}
		
		public static function resize(fitWidth:Number, fitHeight:Number, image:Bitmap):Bitmap
			{
				var x0:uint=0;
			
				while (image.width - x0 > fitWidth || image.height - x0 > fitHeight)
				{
						x0++;
				}
			
			if (image.width - x0 != 0 && image.height - x0 != 0)
				{
						image.width -= x0;
						image.height -= x0;
				}
			return image;
			}
		
		
		public static function clear(mc:MovieClip):void
		{
			while(mc.numChildren>0)
				mc.removeChildAt(0);
		}
	}
}