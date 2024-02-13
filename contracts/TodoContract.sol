// SPDX-License-Identifier: MIT
pragma solidity *0.8.9;

contract TodoContract{

    // createing a struct to hold the various data types present in the todo
    struct Todo{
        uint256 Id;
        string title;
        string description;
        string status;
    }
    // create an enum to hold the different status of the to-do list
    enum Status{done, pending, started, created}

    // mapping the various status to the bool status of the struct
    mapping(Status => Todo[]) mappedStatus;
    // mapping(address => msg.sender) owner;

    // creating an array to hold the to-do lists
    Todo[] todoLists;

    constructor() {
        // owner[msg.sender] = msg.sender;
    }

    function createTodo(string memory _title, string memory _desc, string memory _status) public {
        uint256 todoId = todoLists.length;
        Todo memory newList = Todo(todoId, _title, _desc, _status);        
        todoLists.push(newList);
        
    }

    function updateTodoList(uint256 _id, string memory _title, string memory _desc, string memory _status) public returns(Todo memory){
        require(_id < todoLists.length, "");
        todoLists[_id].title = _title;
        todoLists[_id].description = _desc;
        todoLists[_id].status = _status;
        return todoLists[_id];
    }

    function updateStatus(uint256 _id, string memory _status) public returns(Todo memory){
        //to update the status of a todo, 
        // select the todo by its unique identifier id
        require(_id < todoLists.length, "");
        // require(_status == mappedStatus, "");
            todoLists[_id].status = _status;
            return todoLists[_id];      
    }

    function deleteTodoList(uint256 _id) public {
        require(_id<todoLists.length, "");
        return todoLists.pop();

    }

    function retrieveTodo(uint _id) public view returns(Todo memory){
        return todoLists[_id];
    }
    
    function getAllList() public view returns(Todo[] memory){
        return todoLists;
    }

    function getStatus(uint256 _id) public view returns(string memory){
        return todoLists[_id].status;
    }

}