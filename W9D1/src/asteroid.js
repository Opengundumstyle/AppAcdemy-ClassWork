const MovingObject = require("./moving_object.js");
const Util = require("./utils.js");

const defaults = {
    color: "#97a8ad",
    radius: 7, 
    vel: Util.randomVec(7)
}

function Asteroid(options){
    if(!options) options = {};
    // if(!options.position) options.position =  options.game.randomPosition()
    // if(!options.color) options.color = defaults.color
    // if(!options.radius) options.color = defaults.color
      options.color ||=  defaults.color
      options.position ||= [2,2]
      options.radius ||= defaults.radius
      options.vel ||= defaults.vel;
    console.log(MovingObject)
    MovingObject.call(this, options);
    
}

Util.inherits(Asteroid, MovingObject);

module.exports = Asteroid;