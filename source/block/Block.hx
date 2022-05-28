package block;

import entity.Entity;

/**
  Base class for all blocks
  **/
class Block extends Entity
{
    public function new(x,y, w:Int = 50, h:Int = 20)
    {
        super(x,y,w,h);
    }
}
