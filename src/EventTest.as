package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class EventTest extends Sprite
	{

		private var processorVar:Processor;
		
		public function EventTest()
		{
			trace("App Began!");
			var a:uint = 0 ;
			var b:uint = 2 ;
			trace("Variables sat : "+a+' , '+b);
			processorVar = new Processor();
			trace("What is processor data?? "+processorVar.calc);
			processorVar.addEventListener(Event.RENDER,onSuccess);
			processorVar.addEventListener(Event.CANCEL,onError);
			
			processorVar.huge(3);
			trace("What is processor data now?? "+processorVar.calc);
			trace("Update interface");
		}
		
		protected function onSuccess(event:Event):void
		{
			trace("Done!!!!!!!!! : "+processorVar.calc)
			processorVar.removeEventListener(Event.RENDER,onSuccess);
			processorVar.removeEventListener(Event.CANCEL,onError);
		}
		
		private function onError(event:Event)
		{
			trace("ERROR!!!!!!!!!!!!!!! "+processorVar.calc);
			processorVar.huge(2);
		}
		
		
		
	}
}