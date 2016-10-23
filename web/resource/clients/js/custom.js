var searchKeyword = function () {
    $('.btnsearch').on('click', function () {
        var keyword = $('.searchinput').val();
        window.location.href = searchUrl + '?q=' + keyword;
    });
};
var searchEnter = function () {
    $('.searchenter').on('keypress', function (e) {
        if (e.which === 13) {
            var keyword = $('.searchenter').val();
            e.preventDefault();  
            window.location.href = searchUrl + '?q=' + keyword;
        }
    });

};
var validatePhone = function () {
    $('#confirm_recruiment').on('click', function () {
        var phone = $('#applicant_phone').val();
        var phoneNumberPattern = /^[0-9-+)(]+$/;
        if (phoneNumberPattern.test(phone) === false) {
            $('.error_applicant_phone').remove();
            $('#form_phone').append('<label class="error error_applicant_phone" style="visibility: visible">Định dạng gồm những kí tự +-0-9()</label>');
        } else {
            $('.error_applicant_phone').remove();
        }
    });
};
$(document).ready(function () {
    $('.error_applicant_phone').remove();
    searchKeyword();
    searchEnter();
    validatePhone();
});