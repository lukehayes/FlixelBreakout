package entity;

import flixel.FlxG;

/**
  The ball in the breakout game;
  **/
class Ball extends Entity
{

    /**
      X direction **/
    var dx : Int = 1;

    /**
      Y direction **/
    var dy : Int = 1;

    /**
      Speed of the ball **/
    final SPEED : Int = 400;

    public function new(x,y)
    {
        super(x,y);
        this.color = flixel.util.FlxColor.BLUE;
    }

    override public function update(elapsed: Float)
    {
        x += dx * SPEED * elapsed;
        y += dy * SPEED * elapsed;

        this.checkEdgeCollision();
    }

    /**
      Check if the ball hits an edge of the screen,
      if so then reverse the direction axis.
      **/
    private function checkEdgeCollision()
    {
        if(x > (FlxG.width - -10) || x < 10)
        {
            dx = -dx;
        }

        if(y > (FlxG.height - -10) || y < 10)
        {
            dy = -dy;
        }
    }
}
