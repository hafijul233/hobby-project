/**
 * Created by User on 11/4/2019.
 */
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
});