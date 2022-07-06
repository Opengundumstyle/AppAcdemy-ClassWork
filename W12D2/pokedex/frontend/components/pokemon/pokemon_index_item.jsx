import React from "react";
import { Link } from "react-router-dom";


class PokemonIndexItem extends React.Component{

       render(){
        
           return(
            <li key={this.props.pokemon.key}>
                <Link to={`/pokemon/${this.props.pokemon.id}`}>
                    <div>
                        {this.props.pokemon.name}
                    </div>

                </Link>
             </li>
           )
       }
}

export default PokemonIndexItem; 
