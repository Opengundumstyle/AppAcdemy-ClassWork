import { REMOVE_STEP, RECEIVE_STEPS,RECEIVE_STEP } from "../actions/step_actions";


const stepsReducer = (state = {}, action) => {
    Object.freeze(state)
    let newState = {};
    switch (action.type) {
        case RECEIVE_STEPS:
            for(let el of action.steps)
            {
                newState[el.id] = el;
            }
            return newState;
        case RECEIVE_STEP:
            newState = Object.assign({},state);
            newState[action.step.id] = action.step;
            return newState;
        case REMOVE_STEP:
            newState = Object.assign({},state);
            delete newState[action.step.id];
            return newState;
        default:
            return state;
    }
  };
  
  export default stepsReducer;