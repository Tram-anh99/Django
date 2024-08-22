// SPDX-License-Identifier: MIT
// Định nghĩa phiên bản của Solidity
pragma solidity ^0.8.0;

contract FarmingJournal {
    // Định nghĩa một cấu trúc để lưu thông tin về hoạt động canh tác
    struct Activity {
        string date;        // Ngày thực hiện hoạt động
        string activityType; // Loại hoạt động (ví dụ: tưới cây, bón phân, ...)
        string details;    // Chi tiết về hoạt động (ví dụ: lượng phân bón, phương pháp tưới nước, ...)
    }

    // Mảng để lưu trữ tất cả các hoạt động canh tác
    Activity[] public activities;

    // Hàm để thêm một hoạt động mới vào nhật ký
    function addActivity(string memory _date, string memory _activityType, string memory _details) public {
        // Tạo một đối tượng Activity mới và thêm vào mảng activities
        activities.push(Activity(_date, _activityType, _details));
    }

    // Hàm để lấy danh sách tất cả các hoạt động canh tác
    function getActivities() public view returns (Activity[] memory) {
        // Trả về mảng activities hiện tại
        return activities;
    }
}
