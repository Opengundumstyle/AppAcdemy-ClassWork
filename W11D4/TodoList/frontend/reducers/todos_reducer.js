import { RECEIVE_TODOS, RECEIVE_TODO, REMOVE_TODO} from '../actions/todo_actions';

const todosReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = {};
    switch (action.type) {
        case RECEIVE_TODOS: //replacing all the todos with action.todos
            console.log("RECEIVE_TODOS REACHED: ", action)
            for(let el of action.todos){
                newState[el.id] = el;
            }
            return newState
        case RECEIVE_TODO: //adding a new todo that we got form action.todo
            newState = Object.assign({}, state); //shallow copies state into newState
            newState[action.todo.id] = action.todo;
            return newState;
        case REMOVE_TODO: //remove the given todo from our old todo-list
            newState = Object.assign({}, state);
            delete newState[action.todo.id];
            return newState;
        default:
          return state;
      }
};

// window.initialStateArr = initialStateArr;



export default todosReducer;


// const initialState = {
//     1: {
//       id: 1,
//       title: "wash car",
//       body: "with soap",
//       done: false
//     },
//     2: {
//       id: 2,
//       title: "wash dog",
//       body: "with shampoo",
//       done: true
//     }
//   };

//   let initialStateArr = [{id: 1,
//     title: "wash car",
//     body: "with soap",
//     done: false},{
//         id: 2,
//         title: "wash dog",
//         body: "with shampoo",
//         done: true
//       }]
