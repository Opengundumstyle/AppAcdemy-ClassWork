import React from "react"
import { uniqueId } from '../../../util/id_generator.js'

class TodoForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            title: "",
            body: "",
            done: false
        }

        this.updateTitle = this.updateTitle.bind(this)
        this.updateBody = this.updateBody.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    updateTitle(e)
    {
       this.setState({title: e.target.value});
    }

    updateBody(e)
    {
        this.setState({body: e.target.value});
    }
    
    handleSubmit(e)
    { 
        e.preventDefault();
        const todo = Object.assign({}, this.state, { id: uniqueId() });
        this.props.receiveTodo(todo); //this is the line that adds the new todo made from the form into our todos state
        this.setState({
          title: "",
          body: ""
        }); // reset form
    }

    render()
    {
        return(
            <form onSubmit={this.handleSubmit}>
                <h1>Create a new To-Do Item:</h1>
                <label>Title
                    <input type="text" value={this.state.title} onChange={this.updateTitle}/>
                </label>
                <label>Body
                    <input type="text" value={this.state.body} onChange={this.updateBody} />
                </label>
                <input type="submit" value="Create Todo" />
            </form>
        )
    }
}
          
export default TodoForm;

// class Dog extends React.Component {
//     constructor(props) {
//       super(props);
//     }
  
//     render() {
//       return (
//         <div>
//           Name: {this.props.name}, Breed: {this.props.breed}
//         </div>
//       );
//     }
//   }
  
//   export default Dog;