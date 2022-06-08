

Array.prototype.myEach = function(callback){
    for(i = 0 ; i < this.length ; i++){
        callback(this[i]);
    }
}
let num = [1, 2, 3]

num.myEach((n) => {
    console.log((n + 2));
})


Array.prototype.myMap = function(callback){
     let newArr = [];
     this.myEach(ele => newArr.push(callback(ele)));
     return newArr;
}

console.log([1,2,3].myMap((e)=> e + 5));
console.log([1,2,3].myMap( num => { return num * num} ));



Array.prototype.myReduce = function(callback, initialValue){
    let acc;
    if (initialValue){
        
         acc = initialValue;
    }else {
         acc = this.shift()
    }
    this.myEach(ele => acc = callback(acc, ele) )

    return acc
}

console.log([1, 2, 3, 4, 5].myReduce(function(acc, ele) {
    return acc + ele;
}))