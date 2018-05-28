package
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	[Event(name="render", type="flash.events.Event")]
	[Event(name="cancel", type="flash.events.Event")]
	public class Processor extends EventDispatcher
	{

		public var calc:Number;
		
		public function Processor()
		{
			super();
		}
		
		
		public function huge(initParam:Number):void
		{
			calc = initParam ;
			trace("* loop started with : "+calc);
			for(var i:int = 0 ; i<1000000 ;i++)
			{
				calc = Math.sin(Math.cos(Math.tan(Math.log(calc))));
			}
			trace("* loop ended");
			
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