// const Game = require("./game.js");
// moving_object.js
function MovingObject(options) {
    this.pos = options["pos"];
    this.vel = options.vel;
    this.radius = options.radius;
    this.color = options.color;
    this.game = options.game;
}
  
MovingObject.prototype.draw = function(ctx){
    ctx.fillStyle = this.color;
    ctx.beginPath();
    
    ctx.arc(
          this.pos[0],
          this.pos[1],
          this.radius,
          0,
          2 * Math.PI,
          false
        );
        ctx.fill();
  
}

MovingObject.prototype.move = function(){
    this.pos[0] += this.vel[0];
    this.pos[1] += this.vel[1];
    const wrap = this.game.wrap(this.pos);
    if(wrap !== 0){
      this.pos = wrap;
  }

  MovingObject.prototype.isCollidedWith = function(otherObject){
    let x = this.pos[0]
    let y = this.pos[1]
    let x1 = otherObject.pos[0]
    let y1 = otherObject.pos[1]
    const a = x - x1;
    const b = y - y1;
    if(Math.sqrt(a*a + b*b) <= 14){
      return true;
    }else{
      return false;
    }
  }

}




  const mo = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 5,
    color: "#00FF00"
  });

console.log(MovingObject);
  module.exports = MovingObject;

