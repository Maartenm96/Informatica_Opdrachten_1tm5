package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.events.TimerEvent;
    import flash.geom.Point;
    import flash.text.TextField;
	import flash.utils.Timer;
		
		
	/**
	 * ...
	 * @author Maarten
	 */
	public class Main extends Sprite 
	{
		
		public var FibonacciReeks:Array = new Array();
		public var cirkel: Sprite = new Sprite();
		public var FibonacciCirkelArray:Array = new Array();
		public var Klok: Timer = new Timer(2000, 0);
		
		
		public function Main():void 
		{
			//FibonacciReeks.push(1);
			//FibonacciReeks.push(1);
			//maakFibonaccireeks();
			
			FibonacciCirkelArray.push(1);
			FibonacciCirkelArray.push(1);
			//FibonacciCirkels();
			
			Klok.addEventListener(TimerEvent.TIMER, Cirkels);  
            Klok.start();
			
		}
		
		public function maakFibonaccireeks():void
		{
		
		for (var i: int = 2; i < 1000; i++)
		{
			FibonacciReeks[i] = FibonacciReeks[i - 1] + FibonacciReeks[i - 2]
			FibonacciReeks.push(FibonacciReeks[i]);
			//trace (FibonacciReeks[i]);
		}
		
		}
		
		/*public function FibonacciCirkels():void
		{
			var xpos: int = 100
			
			for (var i: int = 2; i < 10; i++)
			{
			FibonacciCirkelArray[i] = FibonacciCirkelArray[i - 1] + FibonacciCirkelArray[i - 2]
			FibonacciCirkelArray.push(FibonacciCirkelArray[i]);
			trace(FibonacciCirkelArray[i])
			
			cirkel.graphics.beginFill(0x000000, 0.3);
            cirkel.graphics.drawCircle(xpos + (i* 30), 100, i * 3)
            addChild(cirkel) 
			
			}
			*/
		public function Cirkels(e:TimerEvent):void
		{
			var xpos: int = 400;
			var velocity: int = 10;
			var p: int = 10;
			xpos += p;
			
			for (var i: int = 2; i < 12; i++)
			{
			FibonacciCirkelArray[i] = FibonacciCirkelArray[i - 1] + FibonacciCirkelArray[i - 2]
			FibonacciCirkelArray.push(FibonacciCirkelArray[i]);
			trace(FibonacciCirkelArray[i])
			}
			
			for (var p: int = 0; p < 13; p++)
			{
				cirkel.graphics.beginFill(0x000000, 0.1);
				cirkel.graphics.drawCircle(xpos + (p* 10), 300, FibonacciCirkelArray[p]);
				addChild(cirkel) 
			}
			
			for (var p: int = 0; p < 13; p++)
			{
				cirkel.graphics.beginFill(0x000000, 0.1);
				cirkel.graphics.drawCircle(xpos + (p* -10), 300, FibonacciCirkelArray[p]);
				addChild(cirkel) 
			}
			
            
		}
		
		
		}
		
	}
	

