package block;

import entity.Entity;

/**
  Base class for all blocks
  **/
class Block extends Entity
{
    public function new(x,y, w:Int = 50, h:Int = 20, randomizeColor:Bool = true)
    {
        super(x,y,w,h);

        if(randomizeColor)
            this.randomizeColor();
    }

    /**
      Randomize the base color of the block.
      **/
    private function randomizeColor()
    {
        var r = Math.floor(Math.random() * 254);
        var g = Math.floor(Math.random() * 254);
        var b = Math.floor(Math.random() * 254);
        this.color = flixel.util.FlxColor.fromRGB(r,g,b,255);
    }
}
