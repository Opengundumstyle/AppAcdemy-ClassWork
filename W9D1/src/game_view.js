const Game = require("./game.js");


function GameView(ctx, game){
    this.ctx = ctx;
    this.game = game;
    // this.ship = ship;
}

GameView.prototype.start = function(){
   setInterval(()=>{
       this.game.moveObjects();
       this.game.draw(this.ctx);
    }, 20)

}

module.exports = GameView