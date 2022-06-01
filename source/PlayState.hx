package;

import flixel.group.FlxGroup;
import flixel.FlxState;
import flixel.FlxG;
import block.BlockGen;
import block.Block;
import entity.Ball;
import entity.Paddle;

class PlayState extends FlxState
{
    var ball : Ball;
    var paddle : Paddle;
    var ballGrp : FlxTypedGroup<Block>;

    override public function create()
    {
        super.create();

        // Generate blocks, add them to the state.
        ballGrp = BlockGen.generate(10);
        add(ballGrp);

        ball = new Ball(200,300);
        add(ball);

        paddle = new Paddle(FlxG.width / 2, 450, 100,10);
        add(paddle);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        FlxG.collide(ball, ballGrp, processCollisions);
        FlxG.collide(ball, paddle,  processPaddleCollisions);
    }

    private function processCollisions(ball, block)
    {
        block.kill();
        ball.dx = -ball.dx;
        ball.dy = -ball.dy;
    }

    private function processPaddleCollisions(ball, paddle)
    {
        ball.dx = -ball.dx;
        ball.dy = -ball.dy;
    }
}
