document.addEventListener('DOMContentLoaded', function() {
    // Search function for tables
    function searchTable(inputId, tableId) {
        const input = document.getElementById(inputId);
        input.addEventListener('keyup', function() {
            const filter = input.value.toUpperCase();
            const table = document.getElementById(tableId);
            const tr = table.getElementsByTagName('tr');
            for (let i = 0; i < tr.length; i++) {
                const td = tr[i].getElementsByTagName('td')[0]; // Assuming name is in the first column
                if (td) {
                    const textValue = td.textContent || td.innerText;
                    tr[i].style.display = textValue.toUpperCase().indexOf(filter) > -1 ? '' : 'none';
                }
            }
        });
    }

    // Search function for charts
    function searchChart(inputId, chartClass) {
        const input = document.getElementById(inputId);
        input.addEventListener('keyup', function() {
            const filter = input.value.toUpperCase();
            const chartContainers = document.querySelectorAll('.' + chartClass);
            chartContainers.forEach(container => {
                const textValue = container.getAttribute('data-label');
                container.style.display = textValue.toUpperCase().indexOf(filter) > -1 ? '' : 'none';
            });
        });
    }

    // Attach search functions to input fields
    searchTable('searchInput', 'jadwal-body');
    searchChart('searchInput', 'scrollBox'); // Assuming charts have class 'scrollBox'
    searchChart('searchInput', 'box'); // Additional chart containers with class 'box'

    // Handle multiple search inputs
    const searchInputs = document.querySelectorAll('.search input[type="text"]');
    searchInputs.forEach(input => {
        input.addEventListener('keyup', function() {
            const filter = input.value.toUpperCase();
            const parentElement = input.closest('.chartBox');
            const chartContainers = parentElement.querySelectorAll('.scrollBox, .box, .plot-container');
            chartContainers.forEach(container => {
                const textValue = container.getAttribute('data-label') || container.innerText || container.textContent;
                container.style.display = textValue.toUpperCase().indexOf(filter) > -1 ? '' : 'none';
            });
        });
    });
});