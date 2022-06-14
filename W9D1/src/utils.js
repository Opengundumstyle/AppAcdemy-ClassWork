const Util = {

    inherits(childClass, parentClass) { 

    function Serrogate(){}
        Serrogate.prototype = parentClass.prototype 
        childClass.prototype = new Serrogate()
        childClass.prototype.constructor = childClass

   },
   randomVec(length) {
    const deg = 2 * Math.PI * Math.random();
    return Util.scale([Math.sin(deg), Math.cos(deg)], length);
  },
  // Scale the length of a vector by the given amount.
  scale(vec, m) {
    return [vec[0] * m, vec[1] * m];
  }

}


module.exports = Util;