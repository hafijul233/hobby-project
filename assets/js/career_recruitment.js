/**
 * Created by User on 11/4/2019.
 */
function baseUrl(nextPart) {
    return 'http://localhost/bcsir/' + nextPart;
}

$(document).ready(function () {
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
                url: baseUrl("job_apply/ajax_upzila_list"),
                data: {'district': districtId},
                success: function (upzilla) {
                    $('#presentUpazila').html(upzilla);
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

});