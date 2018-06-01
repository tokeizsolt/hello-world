package system
{
    /**
     * ...
     * @author Tőkei Zsolt
     */
    import flash.events.*;
    import flash.display.MovieClip;
    import com.greensock.TweenMax;
    
    public class Logic
    {
        public static function Init():void
        {
            trace("Logic.Init" );
        }
        
        public static function SwitchState(_state:String = ""):void
        {
            trace("Logic.SwitchState: " + _state);
            var i:int;
            var variables:Object;
            var data:Object = new Object();
            switch (_state)
            {
            case "ON_ACTIVATE": 
                Logic.Init();
                break;
            case "ON_DEACTIVATE":
                Logic.Freeze();
                break;
            default: 
                trace("Unknown state");
                break;
            }
        }
        
        public static function Freeze():void
        {
            TweenMax.killAll();
        }
    }
}