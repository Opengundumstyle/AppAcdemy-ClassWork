
import * as APIUtil from "../util/todo_api_util.js"

export const RECEIVE_TODOS = 'RECEIVE_TODOS';
export const RECEIVE_TODO = 'RECEIVE_TODO';
export const REMOVE_TODO = 'REMOVE_TODO';
export const TODO_ERROR = 'TODO_ERROR';

export const receiveTodos = (todos) => {
    return {
      type: RECEIVE_TODOS,
      todos,
    };
  };

export const receiveTodo = (todo) =>({
    type:RECEIVE_TODO,
    todo,
  }  
);

export const removeTodo = (todo) => ({
    type:REMOVE_TODO,
    todo,
})

export const fetchTodos = ()=> d => (
  APIUtil.fetchTodos().then( (result) => d(receiveTodos(result)))
)