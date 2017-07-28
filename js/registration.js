$(document).ready(function() {
    $('select').material_select();

    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 100, // Creates a dropdown of 100 years to control year
        format: 'yyyy-mm-dd'
    });

});

//var d = new Date();
//d.setFullYear( d.getFullYear() - 100 );
//$('.datepicker').pickadate(
//{
//   selectMonths: true,
//   selectYears: true,
//   min: d,
//   max: new Date()
//});

//email validation
var email = document.getElementById("email1");

function ValidateEmail() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    console.log(email);
    if (email.value.match(mailformat)) {
        $('#errorMessage').hide();
        return true;
    } else {
        $('#errorMessage').text("*Invalid email address");
        $('#errorMessage').show();
        return false;
    }
}

//password validation
var password = document.getElementById("password1");
var confirm_password = document.getElementById("confirm_password");

function validatePassword() {
    if (password.value != confirm_password.value) {
        $('#passwordError').text("*Passwords Don't Match");
        $('#passwordError').show();
        return false;
    } else {
        $('#passwordError').hide();
        return true;
    }
}

function validate() {
    return (validatePassword() && ValidateEmail());
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
email.onkeyup = ValidateEmail;