// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FarmingJournal {
    struct Activity {
        string date;
        string activityType;
        string details;
    }

    Activity[] public activities;

    function addActivity(string memory _date, string memory _activityType, string memory _details) public {
        activities.push(Activity(_date, _activityType, _details));
    }

    function getActivities() public view returns (Activity[] memory) {
        return activities;
    }
}
