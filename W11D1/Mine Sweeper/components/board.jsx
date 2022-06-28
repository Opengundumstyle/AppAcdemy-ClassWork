import React from 'react'
import Tile from './tile'

class Board extends React.Component{
    constructor(props){
        super(props)
        
    }

    renderRows(){
        return this.props.board.grid.map((row, i) => {
            return (<div className="row" key={`row-${i}`}> {row.map((el, j) => {
               return <Tile tile={el} updateGame={this.props.updateGame} key={`${i},${j}`}/>
            })}</div>)
        })
    }

    render(){
        return (
            <div id="board">
                  {this.renderRows()}
            </div>
        )
    }


}

export default Board