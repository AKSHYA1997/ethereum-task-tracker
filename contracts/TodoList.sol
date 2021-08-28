pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    //Mapping (key => value)
    mapping(uint => Task) public tasks;

    //Its like getter
    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    constructor() public {
        createTask("This is first task");
    }

    function createTask(string memory _content) public{
        taskCount++;
        //tasks => mappings
        //Task => struct
        tasks[taskCount] =Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }
}