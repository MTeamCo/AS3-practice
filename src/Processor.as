package
{
	public class Processor
	{

		public var calc:Number;
		
		public function Processor()
		{
		}
		
		
		public function huge(initParam:Number,onErrorFunctin:Function,onSuccessFunction:Function):void
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
				onErrorFunctin();
			}
			else
			{
				onSuccessFunction();
			}
		}
	}
}