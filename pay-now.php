<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
?>
<!-- Add this HTML code where you want to display the payment popup -->
<div id="payment-popup" style="display: none;">
  <h2>M-Pesa Payment</h2>
  <form onsubmit="makePayment(event)">
    <label for="phone-number">Phone Number:</label>
    <input type="text" id="phone-number" required>
    <label for="amount">Amount:</label>
    <input type="text" id="amount" required>
    <button type="submit">Make Payment</button>
  </form>
</div>

<!-- Add this JavaScript code to show the payment popup -->
<script>
  function showPaymentPopUp() {
    var popup = document.getElementById("payment-popup");
    popup.style.display = "block";
  }

  function makePayment(event) {
    event.preventDefault();

    var phoneNumber = document.getElementById("phone-number").value;
    var amount = document.getElementById("amount").value;

    // Perform the M-Pesa payment process here
    // You can make an API call to your backend to initiate the payment

    // After successful payment, you can redirect the user to a success page or perform any other actions
    alert("Payment successful!...");
  }
</script>
