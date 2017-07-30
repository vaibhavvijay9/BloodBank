$(document).ready(function() {
    $('select').material_select();

    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15, // Creates a dropdown of 15 years to control year
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