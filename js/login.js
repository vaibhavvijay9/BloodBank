$(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
    $('#modal1').modal('open');
  });
  
  function validate()
{
	var email=document.myForm.email.value;
	
	if(email=="")
	{
		return false;
	}
}