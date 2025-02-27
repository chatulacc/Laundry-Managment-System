let items = document.querySelectorAll('.slider .list .item');
let next = document.getElementById('next');
let prev = document.getElementById('prev');
let thumbnails = document.querySelectorAll('.thumbnail .item');

// config param
let countItem = items.length;
let itemActive = 0;
// event next click
next.onclick = function(){
    itemActive = itemActive + 1;
    if(itemActive >= countItem){
        itemActive = 0;
    }
    showSlider();
}
//event prev click
prev.onclick = function(){
    itemActive = itemActive - 1;
    if(itemActive < 0){
        itemActive = countItem - 1;
    }
    showSlider();
}
// auto run slider
let refreshInterval = setInterval(() => {
    next.click();
}, 5000)
function showSlider(){
    // remove item active old
    let itemActiveOld = document.querySelector('.slider .list .item.active');
    let thumbnailActiveOld = document.querySelector('.thumbnail .item.active');
    itemActiveOld.classList.remove('active');
    thumbnailActiveOld.classList.remove('active');

    // active new item
    items[itemActive].classList.add('active');
    thumbnails[itemActive].classList.add('active');

    // clear auto time run slider
    clearInterval(refreshInterval);
    refreshInterval = setInterval(() => {
        next.click();
    }, 5000)
}

// click thumbnail
thumbnails.forEach((thumbnail, index) => {
    thumbnail.addEventListener('click', () => {
        itemActive = index;
        showSlider();
    })
})

// Validation and calculation function
function validateAndCalculatePrice() {
    var selectedPackage = document.getElementById("package").value;
    var duration = document.getElementById("duration").value;

    if (!selectedPackage || !duration) {
        alert("Please choose a package and enter a duration.");
        return;
    }

    calculateTotalPrice();
}

// Calculate total price
function calculateTotalPrice() {
    var duration = parseInt(document.getElementById('duration').value, 10);
    var selectedPackage = document.getElementById('package').value;
    var pricePerMonth = 0;

    // Determine price per month based on the selected package
    switch (selectedPackage) {
        case 'Lite':
            pricePerMonth = 50;
            break;
        case 'Pro':
            pricePerMonth = 100;
            break;
        case 'Grow':
            pricePerMonth = 150;
            break;
        case 'Grow+':
            pricePerMonth = 200;
            break;
    }

    // Calculate total price
    var totalPrice = pricePerMonth * duration;

    // Display total price
    var totalPriceBox = document.getElementById('totalPriceBox');
    totalPriceBox.innerHTML = '<label for="price">Total Price:</label> <input type="text" id="price" name="price" value="'+"$" + totalPrice + '" required readonly>';

    // Show totalPriceBox
    totalPriceBox.style.display = 'block';
}


function handleCustomizationCheckbox() {
    var checkbox = document.getElementById("checkbox");
    var inputContainer = document.getElementById("inputContainer");
    
    // Check if the checkbox is checked
    if (checkbox.checked) {
        // Remove the 'hidden' class to show the input container
        inputContainer.classList.remove("hidden");
    } else {
        // Add the 'hidden' class to hide the input container
        inputContainer.classList.add("hidden");
    }
}

// Attach event listener to the checkbox
document.getElementById("checkbox").addEventListener("click", handleCustomizationCheckbox);




function showSuccessMessage() {
    alert("Package activated successfully!");
}

function showUpdateSuccessMessage() {
        alert("Package updated successfully!");
    }
    
 function showDeleteMessage() {
        alert("Record deleted successfully!");
    }
    