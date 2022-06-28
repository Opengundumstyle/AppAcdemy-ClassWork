import React from 'react';


class Tile extends React.Component{
  constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this)
    
  }

  handleClick(e){
    // console.log(e)
     let explored;

    if (e.altKey){
      // console.log('it kinda worked')
         explored = true
          
    }else{
       explored = false
       
    }
    this.props.updateGame(this.props.tile, explored)
  }

  


  render(){
        
    let buttonType;
    let text;
    let count;

    if(this.props.tile.flagged){
      buttonType = 'flagged';
      text = '🚩';
      console.log(text,"text")
    }else if(this.props.tile.explored){
      if (this.props.tile.bombed){
        buttonType = 'bombed';
        text = '💣';
      }else {
        buttonType = 'explored';
        count = this.props.tile.adjacentBombCount();
        text = count ? `${count}` : ''
      }
    }

  
    return (<div className="tile">
      <button className={buttonType} onClick={this.handleClick}>{text}</button>

    </div>)
  }
}

export default Tile;

