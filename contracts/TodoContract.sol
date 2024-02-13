//SPDX License-Identifier: MIT
pragma solidity 0.8.19;

contract TodoContract{

    // createing a struct to hold the various data types present in the todo
    struct Todo{
        string title;
        string description;
        bool status;
    }
    // creating an enum to hold the different status of the to-do list
    enum Status{done, pending, started}

    // mapping the various status to the bool status of the struct
    mapping(Status => Todo.status) mappedStatus;

    // creating an array to hold the to-do lists
    Todo[] todoLists;

    function createTodo(string memory _title, string memory _desc, string memory _status) public {
        uint256 todoId = todoLists.length;
        Todo memory newList = Todo(todoId, _title, _desc, _status);        
        todoLists.push(newList);
        
    }

    function updateTodoList(uint256 _id, string memory _title, string memory _desc, string memory _status) public returns(string memory, string memory, string memory){
        require(_id < todoLists.length, "");
        todoLists[_id].title = _title;
        todoLists[_id].description = _desc;
        todoLists[_id].status = _status;
        // return (todoId, Todo.title, Todo.description, Todo.status);
    }

    function updateTodoStatus() public{
        
    }

    function deleteTodoList() public {

    }

}