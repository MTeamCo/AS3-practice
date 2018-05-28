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
			var processorVar:Processor = new Processor();
			processorVar.huge();
			trace("Update interface");
		}
		
	}
}