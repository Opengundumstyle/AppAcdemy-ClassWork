const View = require("./ttt-view.js")// require appropriate file
const Game = require("../ttt_node/game.js")// require appropriate file


document.addEventListener("DOMContentLoaded", () => {
  // Your code here
  let board = document.querySelector('.ttt')
  // let board = document.getElementsByClassName("ttt")
    let view = new View(new Game(), board)
     

});
