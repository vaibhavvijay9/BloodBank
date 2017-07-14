$(document).ready(function() {
    $('select').material_select();

    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });

    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();


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