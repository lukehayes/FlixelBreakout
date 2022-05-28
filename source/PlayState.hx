package;

import flixel.group.FlxGroup;
import flixel.FlxState;
import block.Block;
import block.BlockGen;

class PlayState extends FlxState
{
    var grp : FlxTypedGroup<Block>;

    override public function create()
    {
        super.create();

        // Generate blocks, add them to the state.
        grp = BlockGen.generate(10);
        add(grp);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}
