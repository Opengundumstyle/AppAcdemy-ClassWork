import { legacy_createStore as createStore, applyMiddleware} from 'redux';
import rootReducer from "../reducers/root_reducer.js"
import thunk from '../middleware/thunk.js'

const preloadedState = {
    1: {
        id: 1,
        title: 'wash car',
        body: 'with soap',
        done: false
      },
      2: {
        id: 2,
        title: 'wash dog',
        body: 'with shampoo',
        done: true
      },
}

const configureStore = (preloadedState = {}) => {
   const store = createStore(rootReducer, preloadedState, applyMiddleware(thunk));
   return store;
};

export default configureStore;
