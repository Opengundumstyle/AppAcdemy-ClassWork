
// function range(start, end) {
//     if (start === end) {
//         return [end]
//     }
    
//     return [start].concat(range(start + 1, end))
  
// } 

// // console.log(range(3, 10))


// function sumRec(arr){
//    if (arr.length === 0){
//          return 0
//    }

//    return  arr[0] + sumRec(arr.slice(1)) 

// }

// let arr1 = [2,2,2,2,2,2]

// // console.log(sumRec(arr1))


// function exponent(base, exp) {
//     if (exp === 0) {
//         return 1
//     }
//     return base * exponent(base, exp - 1)
// }

// // console.log(exponent(2, 3))


// function fib(n){
//       if (n === 1 || n === 0) {
//           return n
//       }
       
//       return fib(n-1) + fib(n-2) 
// }

// console.log(fib(6))

function fibsRec(n) {
    if (n < 3) {
      return [0, 1].slice(0, n);
    }
  
    let fibs = fibsRec(n - 1);
    fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]);
  
    return fibs;
  }
  
//   console.log(fibsRec(5));

  function beepDupe(arr) {
      let newArr = []
      arr.forEach(el => { if (el.isArray) {
          newArr.push([beepDupe(el)])
      } else {
          newArr.push(el)
      }


        
      })
      return newArr
  }

let twoDArr = [[3,4],[5,3],[1,2,4]]
// let newdub =  beepDupe(twoDArr)
let newdub = twoDArr
twoDArr.shift()
console.log(twoDArr)
console.log(newdub)