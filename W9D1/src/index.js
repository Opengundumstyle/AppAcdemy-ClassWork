const MovingObject = require("./moving_object.js");
const Util = require("./utils.js");
const Asteroid = require("./asteroid.js");
const GameView = require("./game_view.js");
const Game = require("./game.js");

// module.exports = MovingObject;
// module.exports = Util;
// module.exports = Asteroid;

window.MovingObject = MovingObject
window.Asteroid = Asteroid;

window.addEventListener('DOMContentLoaded', (event) => {
    let canvasobj = document.getElementById("game-canvas");
    let context = canvasobj.getContext("2d");
    const game = new Game()
    const gameView = new GameView(context, game);
    gameView.start();
     window.context = context
    console.log('DOM fully loaded and parsed');
});



const mo = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 5,
    color: "#00FF00"
  });

 