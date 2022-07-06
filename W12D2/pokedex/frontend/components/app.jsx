import React from 'react';
import PokemonIndexContainer from './pokemon/pokemon_index_container';
import PokemonDetailContainer from './pokemon/pokemon_detail_container';
import { Route, Switch, Redirect } from 'react-router-dom';
import ItemDetailContainer from './items/item_detail_container';

export const App = () => (
    <Switch>
        <Route path="/pokemon/:pokemonId/items/:itemId" component={ItemDetailContainer} ></Route>
        <Route path="/pokemon/:pokemonId"  component={PokemonDetailContainer}></Route>
        <Route path="/" component={PokemonIndexContainer}></Route>
    </Switch>
) 