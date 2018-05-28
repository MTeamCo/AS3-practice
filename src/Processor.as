package
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.setTimeout;

	[Event(name="render", type="flash.events.Event")]
	[Event(name="cancel", type="flash.events.Event")]
	public class Processor extends EventDispatcher
	{

		public var calc:Number;
		
		public function Processor()
		{
			super();
		}
		
		
		public function huge():void
		{
			trace("* Connect to web and fetch some data... "+calc);
			 
			setTimeout(processDone,Math.random()*10000);
		}
		
		private function processDone():void
		{
			trace("* loop ended");
			calc = 8 ;
			if(isNaN(calc))
			{
				this.dispatchEvent(new Event(Event.CANCEL));
			}
			else
			{
				this.dispatchEvent(new Event(Event.RENDER));
			}
			
			trace("* Othe functions")
		}
	}
}