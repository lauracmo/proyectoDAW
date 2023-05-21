
$(document).on("click", ".btn-warning", function () {
    let user = $("#user").val()
    let passwd = $("#passwd").val()

    if (user == "" || passwd == ""){
        $(".alert").css("display", "flex")
        $("#textAlert").text("Debe rellenar los dos campos")
    }else {
        $.ajax({
            url: './php/login.php',
            type: 'GET',
            data: {"user": user, "passwd": passwd},
            success: function (respuesta) {
                console.log(respuesta)
                if(respuesta.includes("false")){
                    $(".alert").css("display", "flex")
                    $("#textAlert").text("Usuario y/o contraseña incorrecta")
                }else {
                    localStorage.clear();
                    localStorage.setItem("user", user)
                    window.location.replace("./index.html")
                }
            },
            error: function (e){
                alert("Errorrr")
                console.log(e)
            }
        });
    }
})
