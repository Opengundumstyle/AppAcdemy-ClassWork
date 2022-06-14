/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Util = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\n\nconst defaults = {\n    color: \"#97a8ad\",\n    radius: 7, \n    vel: Util.randomVec(7)\n}\n\nfunction Asteroid(options){\n    if(!options) options = {};\n    // if(!options.position) options.position =  options.game.randomPosition()\n    // if(!options.color) options.color = defaults.color\n    // if(!options.radius) options.color = defaults.color\n      options.color ||=  defaults.color\n      options.position ||= [2,2]\n      options.radius ||= defaults.radius\n      options.vel ||= defaults.vel;\n    console.log(MovingObject)\n    MovingObject.call(this, options);\n    \n}\n\nUtil.inherits(Asteroid, MovingObject);\n\nmodule.exports = Asteroid;\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\n\n\nfunction Game(){\n  this.asteroids = [];\n  this.addAsteroids();\n}\n\n   Game.DIM_X = 1000\n   Game.DIM_Y = 800\n   Game.NUM_ASTEROIDS = 10\n\nGame.prototype.addAsteroids = function(){\n    for(let i = 0; i < Game.NUM_ASTEROIDS; i++){\n        let newAster = new Asteroid({pos: this.randomPosition(), game: this});\n        this.asteroids.push(newAster);\n    }\n\n}\n\nGame.prototype.randomPosition = function(){\n    const pos = [];\n    pos.push(Math.random()*Game.DIM_X);\n    pos.push(Math.random()*Game.DIM_Y);\n    return pos;\n}\n\nGame.prototype.draw = function(ctx){\n     ctx.clearRect(0,0,Game.DIM_X,Game.DIM_Y);\n     for(let i = 0; i < this.asteroids.length; i++){\n        this.asteroids[i].draw(ctx);\n  \n     }\n     \n}\n\nGame.prototype.moveObjects = function(){\n    for(let i = 0; i < this.asteroids.length; i++){\n        this.asteroids[i].move();\n     }\n}\n\n// Game.prototype.outOfBounds = function(pos){\n    \n// }\n\nGame.prototype.wrap = function(pos){\n    let x =  pos[0]\n    let y = pos[1]\n\n    if(x > Game.DIM_X ){\n          return [0,y]\n    }else if (x < 0){\n          return [Game.DIM_X,y]\n    }\n    else if( y > Game.DIM_Y){\n          return [x,0]\n        \n    }else if ( y < 0){\n         return [x,Game.DIM_Y]\n    }else{\n        return 0;\n    }\n}\n\n\n\n\n\nmodule.exports = Game;\n\n\n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\n\n\nfunction GameView(ctx, game){\n    this.ctx = ctx;\n    this.game = game;\n    // this.ship = ship;\n}\n\nGameView.prototype.start = function(){\n   setInterval(()=>{\n       this.game.moveObjects();\n       this.game.draw(this.ctx);\n    }, 20)\n\n}\n\nmodule.exports = GameView\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Util = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\nconst Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\nconst GameView = __webpack_require__(/*! ./game_view.js */ \"./src/game_view.js\");\nconst Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\n\n// module.exports = MovingObject;\n// module.exports = Util;\n// module.exports = Asteroid;\n\nwindow.MovingObject = MovingObject\nwindow.Asteroid = Asteroid;\n\nwindow.addEventListener('DOMContentLoaded', (event) => {\n    let canvasobj = document.getElementById(\"game-canvas\");\n    let context = canvasobj.getContext(\"2d\");\n    const game = new Game()\n    const gameView = new GameView(context, game);\n    gameView.start();\n     window.context = context\n    console.log('DOM fully loaded and parsed');\n});\n\n\n\nconst mo = new MovingObject({\n    pos: [30, 30],\n    vel: [10, 10],\n    radius: 5,\n    color: \"#00FF00\"\n  });\n\n \n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("// const Game = require(\"./game.js\");\n// moving_object.js\nfunction MovingObject(options) {\n    this.pos = options[\"pos\"];\n    this.vel = options.vel;\n    this.radius = options.radius;\n    this.color = options.color;\n    this.game = options.game;\n}\n  \nMovingObject.prototype.draw = function(ctx){\n    ctx.fillStyle = this.color;\n    ctx.beginPath();\n    \n    ctx.arc(\n          this.pos[0],\n          this.pos[1],\n          this.radius,\n          0,\n          2 * Math.PI,\n          false\n        );\n        ctx.fill();\n  \n}\n\nMovingObject.prototype.move = function(){\n    this.pos[0] += this.vel[0];\n    this.pos[1] += this.vel[1];\n    const wrap = this.game.wrap(this.pos);\n    if(wrap !== 0){\n      this.pos = wrap;\n  }\n\n  MovingObject.prototype.isCollidedWith = function(otherObject){\n    let x = this.pos[0]\n    let y = this.pos[1]\n    let x1 = otherObject.pos[0]\n    let y1 = otherObject.pos[1]\n    const a = x - x1;\n    const b = y - y1;\n    if(Math.sqrt(a*a + b*b) <= 14){\n      return true;\n    }else{\n      return false;\n    }\n  }\n\n}\n\n\n\n\n  const mo = new MovingObject({\n    pos: [30, 30],\n    vel: [10, 10],\n    radius: 5,\n    color: \"#00FF00\"\n  });\n\nconsole.log(MovingObject);\n  module.exports = MovingObject;\n\n\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/utils.js":
/*!**********************!*\
  !*** ./src/utils.js ***!
  \**********************/
/***/ ((module) => {

eval("const Util = {\n\n    inherits(childClass, parentClass) { \n\n    function Serrogate(){}\n        Serrogate.prototype = parentClass.prototype \n        childClass.prototype = new Serrogate()\n        childClass.prototype.constructor = childClass\n\n   },\n   randomVec(length) {\n    const deg = 2 * Math.PI * Math.random();\n    return Util.scale([Math.sin(deg), Math.cos(deg)], length);\n  },\n  // Scale the length of a vector by the given amount.\n  scale(vec, m) {\n    return [vec[0] * m, vec[1] * m];\n  }\n\n}\n\n\nmodule.exports = Util;\n\n//# sourceURL=webpack:///./src/utils.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/index.js");
/******/ 	
/******/ })()
;