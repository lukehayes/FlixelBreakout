package entity;


class Paddle extends Entity
{
    public function new(x,y, w:Int = 10, h:Int = 10)
    {
        super(x,y,w,h);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        // Make mouse move the apddle across the screen.
        x = flixel.FlxG.mouse.x;
    }
}
