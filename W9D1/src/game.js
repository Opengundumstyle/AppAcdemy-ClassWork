const Asteroid = require("./asteroid.js");


function Game(){
  this.asteroids = [];
  this.addAsteroids();
}

   Game.DIM_X = 1000
   Game.DIM_Y = 800
   Game.NUM_ASTEROIDS = 10

Game.prototype.addAsteroids = function(){
    for(let i = 0; i < Game.NUM_ASTEROIDS; i++){
        let newAster = new Asteroid({pos: this.randomPosition(), game: this});
        this.asteroids.push(newAster);
    }

}

Game.prototype.randomPosition = function(){
    const pos = [];
    pos.push(Math.random()*Game.DIM_X);
    pos.push(Math.random()*Game.DIM_Y);
    return pos;
}

Game.prototype.draw = function(ctx){
     ctx.clearRect(0,0,Game.DIM_X,Game.DIM_Y);
     for(let i = 0; i < this.asteroids.length; i++){
        this.asteroids[i].draw(ctx);
  
     }
     
}

Game.prototype.moveObjects = function(){
    for(let i = 0; i < this.asteroids.length; i++){
        this.asteroids[i].move();
     }
}

// Game.prototype.outOfBounds = function(pos){
    
// }

Game.prototype.wrap = function(pos){
    let x =  pos[0]
    let y = pos[1]

    if(x > Game.DIM_X ){
          return [0,y]
    }else if (x < 0){
          return [Game.DIM_X,y]
    }
    else if( y > Game.DIM_Y){
          return [x,0]
        
    }else if ( y < 0){
         return [x,Game.DIM_Y]
    }else{
        return 0;
    }
}





module.exports = Game;

