$(document).ready(function () {
    $("form").on("submit", function () {
        if ($("#nome_id").val() === '' || $("#senha_id").val() === '') {
            alert('Preencha todos os campos');
            return false;
        } else {
            return true;
        }
    });
});


