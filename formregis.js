$(document).ready(function() {
    // process the form
    $('form').submit(function(event) {

        // get the form data
        // there are many ways to get this data using jQuery (you can use the class or id also)
        var formData = {
            'name'              : $('input[name=name]').val(),
            'pw'             : $('input[name=pw]').val(),
            'foto'    : $('input[name=foto]').val()
        };
    // process the form
$.ajax({
    type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
    url         : 'prosesreg.php', // the url where we want to POST
    data        : formData, // our data object
    dataType    : 'json' // what type of data do we expect back from the server
})
    // using the done promise callback
    .done(function(data) {

        // log data to the console so we can see
        console.log(data);

        // here we will handle errors and validation messages
        if ( ! data.success) {

            // handle errors for name ---------------
            if (data.errors.name) {
                $('#name-group').addClass('has-error'); // add the error class to show red input
                $('#name-group').append('<div class="help-block">' + data.errors.name + '</div>'); // add the actual error message under our input
            }

            // handle errors for pw ---------------
            if (data.errors.pw) {
                $('#pw-group').addClass('has-error'); // add the error class to show red input
                $('#pw-group').append('<div class="help-block">' + data.errors.pw + '</div>'); // add the actual error message under our input
            }

            // handle errors for superhero alias ---------------
            if (data.errors.foto) {
                $('#foto-group').addClass('has-error'); // add the error class to show red input
                $('#foto-group').append('<div class="help-block">' + data.errors.foto + '</div>'); // add the actual error message under our input
            }

        } else {
          // ALL GOOD! just show the success message!
          $('form').html('<div class="alert alert-success">' + data.message + '</div>');
        }

         });
     event.preventDefault();
    });

});