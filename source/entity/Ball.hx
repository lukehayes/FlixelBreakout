package entity;

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
    final SPEED : Int = 100;

    public function new(x,y)
    {
        super(x,y);
        this.color = flixel.util.FlxColor.BLUE;
    }

    override public function update(elapsed: Float)
    {
        x += dx * SPEED * elapsed;
        y += dy * SPEED * elapsed;
    }
}
