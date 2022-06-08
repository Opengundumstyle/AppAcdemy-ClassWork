Array.prototype.buddleSort = function(){
      let sorted = false
      while(sorted === false){
        sorted = true
        let i = 0 
        while (i < this.length) {
            if (this[i]>this[i+1]) {
                let temp = this[i+1]
                this[i+1]= this[i]
                this[i] = temp
                sorted = false
            }
         i +=1}

      }
      return this
}
// let unsorted = [1, 7, 4, 8, 5, 2, 9]
// console.log(unsorted.buddleSort())


String.prototype.dabStrings = function(){
      let dabArr = []
      for(let i = 0 ; i < this.length ; i++){
          for(let j = i ; j < this.length; j++){
         
            dabArr.push(this.slice(i,j+1))
            
          }
      }
       return dabArr
}

string = 'IamCool'

console.log(string.dabStrings())
