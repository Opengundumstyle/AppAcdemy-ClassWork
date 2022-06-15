class View {
  constructor(game, el) {
        this.game = game
        this.el = el
        this.setupBoard()
        this.handleClick = this.handleClick.bind(this)
        this.bindEvents()
  }
          
  setupBoard() {
       let newBoard = document.createElement('ul')
       for(let row = 0; row < 3; row++) {
         for(let col = 0; col < 3; col++) {
            let li = document.createElement("li");
            li.dataset.pos = `[${row},${col}]`

             newBoard.append(li)
         }
          
       }
      //  li.style.width = 20px;
      this.el.append(newBoard)
  }
  
  bindEvents() {
    //  newBoard.addEventListener("click",handle)
    this.el.addEventListener('click',this.handleClick)
  }

  handleClick(e) {
    // console.log(e)
    // e.preventDefult();
    console.log(this)

    let el = e.target;
    el.style.backgroundColor = "red"
     this.makeMove(el)
      
    // el.classList.toggle("X")
   
  }

  makeMove(square) {
     let pos = square.dataset.pos
     console.log(pos)
     let mark = this.game.currentPlayer
     
     
   
     
      this.game.playMove(JSON.parse(pos))
      square.innerText = mark;
      mark.classList.add(".mark")
     
    
     if(this.game.isOver()) alert("Won")

     
    }
    
    
}

module.exports = View;
