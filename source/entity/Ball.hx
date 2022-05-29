package entity;

import flixel.FlxG;

/**
  The ball in the breakout game;
  **/
class Ball extends Entity
{

    /**
      X direction **/
    public var dx : Int = 1;

    /**
      Y direction **/
    public var dy : Int = 1;

    /**
      Flag event if a screen edge is hit **/
    public var hitEdge : Bool = false;

    /**
      Speed of the ball **/
    final SPEED : Int = 200;

    public function new(x,y)
    {
        super(x,y);
        this.color = flixel.util.FlxColor.WHITE;
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
            hitEdge = true;
        }

        if(y > (FlxG.height - -10) || y < 10)
        {
            dy = -dy;
            hitEdge = true;
        }
    }
}
