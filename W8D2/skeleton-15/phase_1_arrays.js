// Array.prototype.uniq = function(){
//      let newArr = []
//     //   this.forEach()
//     for(i=0 ; i < this.length ; i += 1){
//          if (newArr.includes(this[i]) === false){
//                newArr.push(this[i])
//          }
//     }
//     return newArr
// }


// console.log([1,2,2,3,3,3].uniq())

Array.prototype.twoSum = function() {
    let newArr = [];
    for(i=0; i <this.length ; i++) {
        for(j= (i+1) ; j < this.length ; j++){
            if ((this[i] + this[j]) === 0) {
                newArr.push([i, j]);
            }
        }
    }
    return newArr
}

// let arr = [1, 2, 3, -3, 2] 
// console.log([1, 2, 3, -3, 2,-1].twoSum())


Array.prototype.transpose = function() {
    let newArr = []; 
    for(i=0 ; i < this[0].length ; i++) {
        let smallArr = [];
       for(j = 0 ; j< this.length; j++ ) {
           smallArr.push(this[j][i])
       }
       newArr.push(smallArr);
    }
    return newArr
}

let arr = [[1, 2], [3, 4], [5, 6]]

console.log(arr.transpose())