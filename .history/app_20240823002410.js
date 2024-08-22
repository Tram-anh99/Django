// Đảm bảo rằng bạn đã kết nối với Metamask và hợp đồng thông minh của bạn
const Web3 = require('web3');
const web3 = new Web3(Web3.givenProvider || "http://localhost:8545");

const contractAddress = 'YOUR_CONTRACT_ADDRESS';  // Thay YOUR_CONTRACT_ADDRESS bằng địa chỉ hợp đồng của bạn
const abi = [ /* ABI của hợp đồng thông minh của bạn */ ];
const contract = new web3.eth.Contract(abi, contractAddress);

document.getElementById('activityForm').addEventListener('submit', async (event) => {
    event.preventDefault();

    const date = document.getElementById('date').value;
    const activityType = document.getElementById('activityType').value;
    const details = document.getElementById('details').value;

    const accounts = await web3.eth.getAccounts();

    try {
        await contract.methods.addActivity(date, activityType, details).send({ from: accounts[0] });
        alert('Activity added successfully!');
        loadActivities();
    } catch (error) {
        console.error('Error adding activity:', error);
    }
});

async function loadActivities() {
    const activities = await contract.methods.getActivities().call();
    const activityList = document.getElementById('activityList');
    activityList.innerHTML = '';

    activities.forEach(activity => {
        const li = document.createElement('li');
        li.textContent = `Date: ${activity.date}, Type: ${activity.activityType}, Details: ${activity.details}`;
        activityList.appendChild(li);
    });
}

// Load activities on page load
loadActivities();
