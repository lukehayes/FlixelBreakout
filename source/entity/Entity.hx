package entity;

import flixel.util.FlxColor;
import flixel.FlxSprite;

/**
  Base class for most objects on the screen.
  **/
class Entity extends flixel.FlxSprite
{
    public function new(x,y)
    {
        super(x,y);
        makeGraphic(10,10, FlxColor.WHITE);
    }
}
