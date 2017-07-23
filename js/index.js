$(document).ready(function() {
    $('.slider').slider();
});
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
email.onkeyup = ValidateEmail;