<?php
session_start();

// Static credentials
$validUsername = "admin@gmail.com";
$validPassword = "123";

// Handle form submissions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['signIn'])) {
        // Login logic
        $username = $_POST['username'];
        $password = $_POST['password'];

        if ($username === $validUsername && $password === $validPassword) {
            // Successful login
            $_SESSION['username'] = $username;
            echo "Login successful! Welcome, " . htmlspecialchars($username);
            header("location: ../admin/admin.html");
        } else {
            // Invalid credentials
            echo "Invalid username or password.";
        }
    } elseif (isset($_POST['signUp'])) {
        // Registration logic (not implemented for simplicity)
        // You can add your own registration logic here
        echo "Registration functionality is not implemented in this example.";
    }
}
?>
