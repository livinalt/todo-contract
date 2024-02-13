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

    // creating an array to hold the to-do lists
    Todo[] todoLists;

    function createTodo() public {

    }

    function updateTodoList() public {

    }

    function updateTodoStatus() public{
        
    }

    function deleteTodoList() public {

    }

}