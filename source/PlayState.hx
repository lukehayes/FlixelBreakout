package;

import flixel.group.FlxGroup;
import flixel.FlxState;
import flixel.FlxG;
import block.BlockGen;
import block.Block;
import entity.Ball;

class PlayState extends FlxState
{
    var ball : Ball;
    var ballGrp : FlxTypedGroup<Block>;

    override public function create()
    {
        super.create();

        // Generate blocks, add them to the state.
        ballGrp = BlockGen.generate(10);
        add(ballGrp);

        ball = new Ball(200,300);
        add(ball);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        FlxG.collide(ball, ballGrp, processCollisions);
    }

    private function processCollisions(ball, block)
    {
        block.kill();
        ball.dx = -ball.dx;
        ball.dy = -ball.dy;
    }
}
