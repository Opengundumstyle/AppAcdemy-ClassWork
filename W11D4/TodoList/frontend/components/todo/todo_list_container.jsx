//import something from ./todo_list.jsx
import { connect } from "react-redux"
import { getAllTodos } from "../../reducers/selectors"
import { receiveTodo} from "../../actions/todo_actions.js"
import TodoList from './todo_list';

const mapStateToProps = (state) => {
    return {
        todos: getAllTodos(state)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        receiveTodo: todo => dispatch(receiveTodo(todo))
    }
}

export default connect(
    mapStateToProps,
    mapDispatchToProps
  )(TodoList);

// TodoList(props)

// props = {todos: , receiveTodo:}

{/* <TodoList todos={todos} receiveTodo={receiveTodo}> */}