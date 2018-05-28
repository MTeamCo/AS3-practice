package
{
	import flash.display.Sprite;
	
	public class EventTest extends Sprite
	{
		public function EventTest()
		{
			trace("App Began!");
			var a:uint = 0 ;
			var b:uint = 2 ;
			trace("Variables sat : "+a+' , '+b);
			huge();
			trace("Update interface");
		}
		
			public function huge():void
			{
				var calc:Number = 2 ;
				trace("* loop started");
				for(var i:int = 0 ; i<10000000 ;i++)
				{
					calc = Math.sin(Math.cos(Math.tan(Math.log(calc))));
				}
				trace("* loop ended");
			}
	}
}