let list = document.querySelectorAll(".navigation li");

function activeLink() {
    list.forEach((item) => {
        item.classList.remove("hovered");
    });
    this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let main = document.querySelector(".main");

toggle.onclick = function () {
    navigation.classList.toggle("active");
    main.classList.toggle("active");
}

// Function to toggle dark mode
function toggleDarkMode() {
    const body = document.body;
    body.classList.toggle('dark-mode');

    // Check if dark mode is active
    const isDarkMode = body.classList.contains('dark-mode');
    // Save dark mode preference to local storage
    localStorage.setItem('darkMode', isDarkMode);
}

// Check if dark mode preference is stored in local storage
const storedDarkMode = localStorage.getItem('darkMode');
// If dark mode preference is found, set the body class accordingly
if (storedDarkMode) {
    document.body.classList.toggle('dark-mode', storedDarkMode === 'true');
}

function viewAll() {
    var viewOption = document.getElementById("viewOption").value;

    if (viewOption === "treemap") {
        document.getElementById("treemapContainer").style.display = "block";
        document.getElementById("tableContainer").style.display = "none";
    } else if (viewOption === "table") {
        document.getElementById("tableContainer").style.display = "block";
        document.getElementById("treemapContainer").style.display = "none";
    }
}

document.getElementById("searchInput").addEventListener("input", function () {
    var searchValue = this.value.toLowerCase();
    var rooms = document.querySelectorAll("#tableContainer tbody tr");

    rooms.forEach(function (room) {
        var cells = room.querySelectorAll("td");
        var found = false;

        cells.forEach(function (cell) {
            if (cell.textContent.toLowerCase().includes(searchValue)) {
                found = true;
            }
        });

        if (found) {
            room.style.display = "table-row";
        } else {
            room.style.display = "none";
        }
    });
});


