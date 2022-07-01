export const fetchTodos = () => {
    return(
        $.ajax({
            method: 'GET',
            url: '/api/todos'
        })
    )
}


// fetchTodos().then( (result) => {console.log(result)})