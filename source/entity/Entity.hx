package entity;

import flixel.util.FlxColor;
import flixel.FlxSprite;

/**
  Base class for most objects on the screen.
  **/
class Entity extends flixel.FlxSprite
{
    public function new(x,y, w:Int = 10, h:Int = 10)
    {
        super(x,y);
        makeGraphic(w,h, FlxColor.WHITE);
    }
}
