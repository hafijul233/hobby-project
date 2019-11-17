/**
 * Created by User on 11/17/2019.
 */
$(document).ready(function () {
    //Applicant name
    $('#applicantName').focusout(function () {
        $('#applicantNameError').text(name_validation($(this).val()));
    });

    //father name
    $('#fatherName').focusout(function () {
        $('#fatherNameError').text(name_validation($(this).val()));
    });

    //mother name
    $('#motherName').focusout(function () {
        $('#motherNameError').text(name_validation($(this).val()));
    });

    //date of birth
    $('#birthDate').focusout(function () {
        $('#birthDateError').text(date_validation($(this).val()));
    });

    //place of birth
    $('#placeOfBirth').focusout(function () {
        $('#placeOfBirthError').text(text_validation($(this).val()));
    });

    //Gender
    $('#Male, #Female, #Others').click(function() {
       if($(this).is(':checked') == false) {
           $('genderError').text(number_validation($(this).val()));
       } else {
           $('genderError').text("This Field is Required");
       }
    });
    //nationality
    $('#nationality').change(function () {
        $('#nationalityError').text(number_validation($(this).val()));
    });
/*
    if($('#nationalId').val() == '' && $('#birthRegId').val() == '' && $('#passportId').val() == '' ) {
        $('#passportIdError').text("Any of NID/ Birth Reg No/ Passport ID required");
    }*/
    //NID
    $('#nationalId').focusout(function () {
        $('#nationalIdError').text(number_validation($(this).val()));
    });

    //BREGID
    $('#birthRegId').focusout(function () {
        $('#birthRegIdError').text(number_validation($(this).val()));
    });

    //PID
    $('#passportId').focusout(function () {
        $('#passportIdError').text(text_validation($(this).val()));
    });

    //Religion
    $('#religion').change(function () {
        $('#religionError').text(number_validation($(this).val()));
    });

    //marital status
    $('#Married').click(function () {
        if($('#Married').is(':checked')) {
            $('#spouseName').focusout(function(){
               $('#maritalStatusError').text(name_validation($(this).val()));
               $(this).focus();
            });
        }
    });

    //Quota
    $('#quota').change(function () {
        $('#quotaError').text(number_validation($(this).val()));
    });

    //present care of
    $('#presentCareOf').focusout(function () {
        $('#presentCareOfError').text(name_validation($(this).val()));
    });

    //present address
    $('#presentaddress').focusout(function () {
        $('#presentAddressError').text(text_validation($(this).val()));
    });

    //District
    $('#presentDistrict').change(function () {
        $('#presentDistrictError').text(number_validation($(this).val()));
    });

    //upazila
    $('#presentUpazila').change(function () {
        $('#presentUpazilaError').text(number_validation($(this).val()));
    });

    ///post office
    $('#presentPO').focusout(function () {
        $('#presentPOError').text(text_validation($(this).val()));
    });

    //present post code
    $('#presentPC').focusout(function () {
        $('#presentPCError').text(text_validation($(this).val()));
    });

    $('#sameAddress').click(function () {
        if($('#sameAddress').is('checked')) {
            //present care of
            $('#permanentCareOf').focusout(function () {
                $('#permanentCareOfError').text(name_validation($(this).val()));
            });

            //permanent address
            $('#permanentaddress').focusout(function () {
                $('#permanentAddressError').text(text_validation($(this).val()));
            });

            //District
            $('#permanentDistrict').change(function () {
                $('#permanentDistrictError').text(number_validation($(this).val()));
            });

            //upazila
            $('#permanentUpazila').change(function () {
                $('#permanentUpazilaError').text(number_validation($(this).val()));
            });

            ///post office
            $('#permanentPO').focusout(function () {
                $('#permanentPOError').text(text_validation($(this).val()));
            });

            //permanent post code
            $('#permanentPC').focusout(function () {
                $('#permanentPCError').text(text_validation($(this).val()));
            });
        }
    });

    function name_validation(stringName) {
        if (stringName == '') {
            return "This Field is Required.";
        } else if (stringName.match(/^[a-zA-Z ]*$/) == null) {
            return "Invalid Characters Inserted.";
        } else if (stringName.length > 255) {
            return "Input Size is Too Big";
        } else {
            return null;
        }
    }

    function date_validation(stringDate) {
        if (stringDate == '') {
            return "This Field is Required.";
        } else if (stringDate.match(/([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/) == null) {
            return "Invalid Date Format";
        } else {
            return null;
        }
    }

    function text_validation(stringText) {
        if (stringName == '') {
            return "This Field is Required.";
        } else if (stringName.match(/^[a-zA-Z0-9]*$/) == null) {
            return "Invalid Characters Inserted.";
        } else if (stringName.length > 255) {
            return "Input Size is Too Big";
        } else {
            return null;
        }
    }

    function number_validation(stringNumber) {
        if (stringNumber == '') {
            return "This Field is Required.";
        } else if (isNaN(stringNumber) == true) {
            return "Invalid Choice.";
        } else {
            return null;
        }
    }
});