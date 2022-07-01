import React from "react";
import TodoListItem from "./todo_list_item";
import TodoForm from "./todo_list/todo_form.jsx"

const TodoList = ({todos, receiveTodo}) => {
    const todo_titles = todos.map((todo) => {
        return <TodoListItem key={todo.id} todo={todo} receiveTodo={ receiveTodo }  />
        // return <li> {todo.title} </li>
    });

    return(
        <div>
            <ul>
                {todo_titles}
            </ul>
            
            <TodoForm receiveTodo={receiveTodo}/>
        </div>
    )
}

export default TodoList;