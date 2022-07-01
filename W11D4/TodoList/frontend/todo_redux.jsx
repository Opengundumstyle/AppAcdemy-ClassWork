import React from 'react';
import ReactDOM from "react-dom";
import configureStore from "./store/store.js";
import Root from "./components/root.jsx";
import {getAllTodos} from "./reducers/selectors.js";

import {receiveTodos, receiveTodo, removeTodo } from "./actions/todo_actions.js";
import {receiveSteps, receiveStep, removeStep } from "./actions/step_actions.js";

import {fetchTodos} from "./actions/todo_actions.js"


document.addEventListener("DOMContentLoaded",()=>{
       
    const rootEl = document.getElementById('content');

    const store = configureStore();
    window.store = store;
    // window.getAllTodos = getAllTodos;

    ReactDOM.render(<Root store={store} />, rootEl);

    window.fetchTodos = fetchTodos;

    // const newTodos = [
    // {
    //   id: 1,
    //   title: "wash car",
    //   body: "with soap",
    //   done: false
    // },
    // {
    //   id: 2,
    //   title: "wash dog",
    //   body: "with shampoo",
    //   done: true
    // }];

//   const newSteps = [
//     { // this is the step with id = 1
//       id: 1,
//       title: 'walk to store',
//       done: false,
//       todo_id: 1
//     },
//     { // this is the step with id = 2
//       id: 2,
//       title: 'buy soap',
//       done: false,
//       todo_id: 1
// } ];

//     window.newTodos = newTodos;
//     window.receiveTodo = receiveTodo;
//     window.receiveTodos = receiveTodos;
//     window.removeTodo = removeTodo;
//     window.receiveStep =receiveStep;
//     window.receiveSteps = receiveSteps;
//     window.removeStep = removeStep;
//     window.newSteps = newSteps;

})   


