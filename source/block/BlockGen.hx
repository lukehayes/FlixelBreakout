package block;

import flixel.group.FlxGroup;

/**
  Container for the walls of blocks in the game.
  **/
class BlockGen
{
    /**
      Spacing for each blocks X axis **/
    static final GAPX = 60;

    /**
      Spacing for each blocks Y axis **/
    static final GAPY = 30;

    /**
      Generate a grid of blocks.

      @param  size    Number of block to generate in X and Y.
      @return FlxTypedGroup<Block>.
      **/
    static public function generate(size:Int) : FlxTypedGroup<Block>
    {
        var group = new FlxTypedGroup<Block>();

        for(x in 0...size)
        {
            for(y in 0...size)
            {
                var block = new Block(200 + x * GAPX, 30 + y * GAPY);
                group.add(block);
            }
        }
        return group;
    }
}
