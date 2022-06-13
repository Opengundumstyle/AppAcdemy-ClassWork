// function sum(...args) {
//     let sum = 0;
//     // console.log(args);
//     for (let i = 0; i < args.length; i++) {
//         sum += args[i];
//     }
//     return sum;
// }

// // console.log(sum(1, 2, 3, 4, 5));




// class Cat {
//     constructor(name) {
//       this.name = name;
//     }
  
//     says(sound, person) {
//       console.log(`${this.name} says ${sound} to ${person}!`);
//       return true;
//     }
//   }
  
//   class Dog {
//     constructor(name) {
//       this.name = name;
//     }
// }



// // Function.prototype.myBind = function(context){
// //     let banana = this
// //     bindTimeArgs = Array.from(arguments).slice(1);
// //     return function(){
// //         callTimeArgs = Array.from(arguments);
// //         allArgs = bindTimeArgs.concat(callTimeArgs);
// //         banana.apply(context, allArgs);
// //     }
// // }

// Function.prototype.myBind = function(context,...bindTimeArgs){
//     let banana = this;
//     return function(...callTimeArgs){
//         allArgs = bindTimeArgs.concat(callTimeArgs);
//         banana.apply(context, allArgs);
//     }
// }

//   const markov = new Cat("Markov");
//   const pavlov = new Dog("Pavlov");
  
//   markov.says("meow", "Ned");
//   // Markov says meow to Ned!
//   // true
  
//   // bind time args are "meow" and "Kush", no call time args
//   markov.says.myBind(pavlov, "meow", "Kush")();
//   // Pavlov says meow to Kush!
//   // true
  
//   // no bind time args (other than context), call time args are "meow" and "a tree"
//   markov.says.myBind(pavlov)("meow", "a tree");
//   // Pavlov says meow to a tree!
//   // true
  
//   // bind time arg is "meow", call time arg is "Markov"
//   markov.says.myBind(pavlov, "meow")("Markov");
//   // Pavlov says meow to Markov!
//   // true
  
//   // no bind time args (other than context), call time args are "meow" and "me"
//   const notMarkovSays = markov.says.myBind(pavlov);
//   notMarkovSays("meow", "me");
//   // Pavlov says meow to me!
//   // true


  //curriedSum

  function curriedSum(numArgs) {
    let numbers = [];

    return function _curriedSum(num){
        numbers.push(num);
        if (numbers.length === numArgs){
            return numbers.reduce((acc,ele)=>{
                return acc + ele;
            })
        } else {
            return _curriedSum;
        }
 
    }
      
  }

// const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56

Function.prototype.curry = function(numArgs) {
    let args = [];
    let that = this;

    return function _curriedFunc(arg) {
        // check if args.length === numArgs
        // use .apply to apply collected args to original function
            // call the original function with collected args
        // else
            // return _curriedFunc
          
        args.push(arg);
        if(args.length === numArgs){
           return that.call(that, ...args);
        //    return that.apply(this,args);

            
        }else{
            return _curriedFunc;
        }

    }
}

function sumThree(num1, num2, num3) {
    console.log(this)
    return num1 + num2 + num3;
  }
  
//   console.log(sumThree(4, 20, 6)); // == 30
  
  // you'll write `Function#curry`!
  let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
  f1 = f1(4); // [Function]
  f1 = f1(20); // [Function]
  f1 = f1(6); // = 30
  
  // or more briefly:
  console.log(sumThree.curry(3)(4)(10)(9)); // == 30