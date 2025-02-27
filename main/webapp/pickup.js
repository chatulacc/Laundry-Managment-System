const urgencySelect = document.getElementById('urgency');

// Add change event listener to the select element
urgencySelect.addEventListener('change', function() {
    // Get the selected value
    const selectedValue = urgencySelect.value;

    // If selected value is 'urgent', display additional cost message
    if (selectedValue === 'urgent') {
        alert('Additional cost will be incurred for urgent pickup.');
    }

});
/*function calculateTotal() {
    // Get the input element for quantity
    const quantityInput = document.getElementById('quantityInput');

    // Get the entered quantity value
    const enteredQuantity = parseFloat(quantityInput.value);

    // Calculate total amount based on the price per kg
    const pricePerKg = 12; // $12 per kg
    const totalAmount = pricePerKg * enteredQuantity;

    // Display the total amount
    alert('Total amount: $' + totalAmount.toFixed(2));
}*/
function calculateTotal() {
    // Get the input element for quantity
    const quantityInput = document.getElementById('quantityInput');

    // Get the entered quantity value
    const enteredQuantity = parseFloat(quantityInput.value);

    // Calculate total amount based on the price per kg
    const pricePerKg = 12; // $12 per kg
    const totalAmount = pricePerKg * enteredQuantity;

    // Display the total amount in the totalAmountBox
    const totalAmountBox = document.getElementById('totalAmountBox');
    totalAmountBox.value = '$' + totalAmount.toFixed(2);
    totalAmountBox.style.display ='inline-block';
   
    /*document.getElementById('totalAmountBox').value = totalAmount.toFixed(2);*/
}


/**
 * 
 *//**
 * 
 */