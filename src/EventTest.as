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
			trace("What is processor data?? "+processorVar.calc);
			processorVar.huge(2,onError,onSuccess);
			trace("What is processor data now?? "+processorVar.calc);
			trace("Update interface");
		}
		
		private function onError()
		{
			trace("ERROR!!!!!!!!!!!!!!!");
		}
		
		private function onSuccess()
		{
			trace("Done!!!!!!!!!")
		}
		
	}
}