package;

import flixel.FlxState;
import block.Block;

class PlayState extends FlxState
{
    var block : Block;

    override public function create()
    {
        super.create();
        block = new Block(300,300);
        add(block);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}
