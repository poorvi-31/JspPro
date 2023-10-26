<%-- 
    Document   : Signup
    Created on : 25-Oct-2023, 8:39:55 pm
    Author     : jay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <script>
        function validateForm() {
                      var name = document.getElementById("name");
            var email = document.getElementById("email");
            var phone = document.getElementById("phone");
            var password = document.getElementById("password");
            var confirm_password = document.getElementById("confirm_password");
            var validName = document.getElementById("valName");
            var validEmail = document.getElementById("valEmail");
            var validNum = document.getElementById("valNum");
            var validPass = document.getElementById("valPass");
            var validCon = document.getElementById("valCon");

            // Reset validation messages
            validName.innerHTML = "";
            validEmail.innerHTML = "";
            validNum.innerHTML = "";
            validPass.innerHTML = "";
            validCon.innerHTML = "";

            var isValid = true;

            // Check for null or empty values in specific fields
            if (!name.value) {
                validName.innerHTML = "Name is required.";
                name.focus();
                isValid = false;
            }

            if (!email.value) {
                validEmail.innerHTML = "Email is required.";
                isValid = false;
            }

            if (!phone.value) {
                validNum.innerHTML = "Phone Number is required.";
                phone.focus()
                isValid = false;
            }

            if (!password.value) {
                validPass.innerHTML = "Password is required.";
                isValid = false;
            }

            if (!confirm_password.value) {
                validCon.innerHTML = "Confirm Password is required.";
                isValid = false;
            }
              if (!isValid) {
                    return false;
                 }

            
            var containsNumbers = /\d/.test(name.value);
            if (containsNumbers) {
                validName.innerHTML="Name cannot have numbers.";
                name.focus();
                return false; // Prevent the form from submitting
            }

            var isValidPhoneNumber = /^[6-9]\d{9}$/.test(phone.value);

            if (!isValidPhoneNumber) {
                validNum.innerHTML="Invalid Number!";
                phone.focus();
                return false;
            }
            var isValidPassword = /^.{8}$/.test(password.value);
            if(!isValidPassword)
            {
                validPass.innerHTML="Password should contain eight characters";
                password.focus();
                return false;
            }
            if(password.value!= confirm_password.value)
            {
                validCon.innerHTML="Password and confirm password do not match.";
                confirm_password.focus();
                return false;
            }

            return true; 
         
        }
    </script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Registration Page</title>
    <style>
        #top
        {
            font-size: 20px;
        }
        .validate
        {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container mt-2">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center" id="top">Sign up</div>
                    <div class="card-body">
                        <form onsubmit="return validateForm()">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" class="form-control" id="name" name="name">
                                <span id="valName" class="validate"></span>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" name="email">
                                <span id="valEmail" class="validate"></span>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number:</label>
                                <input type="tel" class="form-control" id="phone" name="phone">
                                <span id="valNum" class="validate"></span>
                            </div>
                            <div class="form-group">
                                <label>Gender:</label>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="male" name="gender" value="male">
                                    <label class="form-check-label" for="male">Male</label>
                                   
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="female" name="gender" value="female">
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                                 <span id="valGender"></span>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password">
                                 <span id="valPass" class="validate"></span>
                            </div>
                            <div class="form-group">
                                <label for="confirm_password">Confirm Password:</label>
                                <input type="password" class="form-control" id="confirm_password" name="confirm_password">
                                 <span id="valCon" class="validate"></span>
                            </div>
                            <button type="submit" class="btn btn-primary">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


