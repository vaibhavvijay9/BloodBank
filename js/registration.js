$(document).ready(function() {
    $('select').material_select();

    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });

});

function ValidateEmail(inputText) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (inputText.value.match(mailformat)) {
        document.registerForm.email.focus();
        return true;
    } else {
        $('#errorMessage').append("*Invalid email address");
        document.registerForm.email.focus();
        return false;
    }
}