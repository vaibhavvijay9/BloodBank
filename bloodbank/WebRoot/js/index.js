$(document).ready(function() {
    $('.slider').slider();

    $(".button-collapse").sideNav({
        closeOnClick: true,
    });
    // Initialize collapsible (uncomment the line below if you use the dropdown variation)
    //$('.collapsible').collapsible();
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
email.onchange = ValidateEmail;

//sign-in
$(".forgot-password-panel").hide();
$(".forgot-link").click(function() {
    $(".sign-in-panel").hide();
    $(".forgot-password-panel").show();
});

var email2 = document.getElementById("email2");

function ValidateEmail2() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    console.log(email2);
    if (email2.value.match(mailformat)) {
        $('#errorMessage1').hide();
        return true;
    } else {
        $('#errorMessage1').text("*Invalid email address");
        $('#errorMessage1').show();
        return false;
    }
}
email2.onchange = ValidateEmail2;