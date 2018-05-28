package
{
	public class Processor
	{
		public function Processor()
		{
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