/**
 * Created by User on 11/4/2019.
 */
function baseUrl(nextPart) {
    //Local
    var str = "http://localhost/bcsir/" + nextPart;
    //Server
    //var str = "http://bcsir.bipanani.com/" + nextPart;
    return str;
}

$(document).ready(function () {
    $('.simName').addClass('df-logo');
    $('#FiveGpaResult').hide();
    $('.date-picker').datepicker({
        format: 'yyyy-mm-dd',
        viewMode: 'years'
    });
    //hide spouse name by default
    $('.spouseName').hide();
    //Spouse name Show
    $('#Married').click(function () {
        if ($('#Married').is(':checked')) {
            $('.spouseName').show();
        }
    });
    //Spouse Block hide
    $('#Single').click(function () {
        if ($('#Single').is(':checked')) {
            $('.spouseName').hide();
        }
    });

    //ajax Call for upzila
    //clear states
    $('#presentUpazila,#permanentUpazila').empty();
    $('#presentUpazila,#permanentUpazila').append('<option selected="true" disabled>Select District</option>');
    //Load Post upazila from district
    $('#presentDistrict').change(function () {
        var districtId = $(this).val();
        if (districtId != '') {
            $.ajax({
                type: "POST",
                url: baseUrl("Job_apply/ajax_upzila_list"),
                data: {'district': districtId},
                success: function (upzilla) {
                    console.log(upzilla);
                    $('#presentUpazila').html(upzilla);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });
        } else {
            $('#presentUpazila').html('<option selected="true" disabled>Select District</option>');
        }
    });

    //perment upzila
    //Load Post upazila from district
    $('#permanentDistrict').change(function () {
        var districtId = $(this).val();
        if (districtId != '') {
            $.ajax({
                type: "POST",
                url: baseUrl("job_apply/ajax_upzila_list"),
                data: {'district': districtId},
                success: function (upzilla) {
                    $('#permanentUpazila').html(upzilla);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });
        } else {
            $('#permanentUpazila').html('<option selected="true" disabled>Select District</option>');
        }
    });

    // b.sc up
    //clear states
    $('#graduateSubject,#mastersSubject').empty();
    $('#graduateSubject,#mastersSubject').append('<option selected="true" disabled>Select Examination</option>');
    //Load Gradutes Subjects
    $('#graduateExam').change(function () {
        var examId = $(this).val();
        //console.log(examId);
        if (examId != '') {
            $.ajax({
                type: "POST",
                url: baseUrl("job_apply/ajax_graduate_subjects"),
                data: {'graduate': examId},
                success: function (subjects) {
                    //console.log(subjects);
                    $('#graduateSubject').html(subjects);
                }
            });
        } else {
            $('#graduateSubject').html('<option selected="true" disabled>Select Exam First</option>');
        }
    });
    //Load Masters Subjects
    $('#mastersExam').change(function () {
        var examId = $(this).val();
        console.log(examId);
        if (examId != '') {
            $.ajax({
                type: "POST",
                url: baseUrl("job_apply/ajax_masters_subjects"),
                data: {'masters': examId},
                success: function (subjects) {
                    console.log(subjects);
                    $('#mastersSubject').html(subjects);
                }
            });
        } else {
            $('#mastersSubject').html('<option selected="true" disabled>Select Exam First</option>');
        }
    });
    $('#sameAddress').click(function () {
        if ($('#sameAddress').is(':checked')) {
            $('#permanentCareOf,#permanentAddress,#permanentDistrict,#permanentUpazila,#permanentPO,#permanentPC').hide();
            $('#permanentCareOf').val($('#presentCareOf').val());
            $('#permanentAddress').val($('#presentAddress').val());
            $('#permanentDistrict').val($('#presentDistrict').val());
            $('#permanentUpazila').val($('#presentUpazila').val());
            $('#permanentPO').val($('#presentPO').val());
            $('#permanentPC').val($('#presentPC').val());


        } else {
            $('#permanentCareOf,#permanentAddress,#permanentDistrict,#permanentUpazila,#permanentPO,#permanentPC').show();
            $('#permanentAddress').attr("value", "");
            $('#permanentDistrict').attr("value", "");
            $('#permanentUpazila').attr("value", "");
            $('#permanentPO').attr("value", "");
            $('#permanentPC').attr("value", "");
        }
    });

    $('#mobileNumber, #confirmMobile').keydown(function (e) {
        var key = e.which || e.charCode || e.keyCode || 0;
        $phone = $(this);
        // Auto-format- do not expose the mask as the user begins to type
        if (key !== 8 && key !== 9) {
            if ($phone.val().length === 3) {
                $phone.val($phone.val() + '-');
            }
            if ($phone.val().length === 8) {
                $phone.val($phone.val() + '-');
            }
            if ($phone.val().length === 12) {
                $phone.val($phone.val() + '');
            }

        }

        // Allow numeric (and tab, backspace, delete) keys only
        return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
    });

    $('#mobileNumber').keydown(function () {
        if ($('#mobileNumber').val().length >= 2 ) {
            var simCode = $('#mobileNumber').val().substr(0,3);
            var sim = $('#smName');
            sim.removeClass();
            sim.addClass("simName " + sim_selector(simCode));
        }
    });

    $('#FiveResult').change(function() {
        var selected = $(this).val();
        if(selected == 4 || selected == 5) {
            $('#FiveGpaResult').show();
        } else {
            $('#FiveGpaResult').hide();
        }
    });
});

function sim_selector(code) {
    console.log(code);
    switch (code) {
        case "011" :
            return "cc-logo";
        case "012" :
            return "df-logo";
        case "013" :
            return "gp-logo";
        case "014" :
            return "bl-logo";
        case "015" :
            return "ta-logo";
        case "016" :
            return "ar-logo";
        case "017" :
            return "gp-logo";
        case "018" :
            return "rb-logo";
        case "019" :
            return "bl-logo";
        default :
            return "df-logo";
    }
}
