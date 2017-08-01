$(document).ready(function() {
    $('select').material_select();

    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 100, // Creates a dropdown of 15 years to control year
        format: 'yyyy-mm-dd' //vv set the defined format vv
    });


    var $input = $('.defaultDate').pickadate()
    var date = $('.defaultDate').val();
    // Use the picker object directly.
    var picker = $input.pickadate('picker')
        // Using a string along with the parsing format (defaults to `format` option).
    picker.set('select', date, { format: 'yyyy-mm-dd' })


});
// Initialize collapse button
$(".button-collapse").sideNav();
// Initialize collapsible (uncomment the line below if you use the dropdown variation)
//$('.collapsible').collapsible();

function validate() {
    var qty = document.myForm.quantity.value;

    if (qty == "") {
        return false;
    }
}

//makes the datepicker a required field
function checkDate() 
{
	console.log($('.check').val());
	if ($('.check').val() == '') 
	{
		$('#requiredMessage').text("*Select a date");
		$('#requiredMessage').show();
		return false;
	}
	else
	{
		$('#requiredMessage').hide();
		return true;
	}
}

//password verification
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
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;