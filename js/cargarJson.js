$(document).ready(function () {
    //CARGAS NOTICIAS
    $.ajax({
        url: "./js/noticias.json", //Llama al archivo desde el html
        type: "GET",
        dataType: "json",
        success: function (data) {
            //console.log(data.noticias[0]);
            //Noticia principal
            $('.noticiaPrincipal img').attr('src', data.noticias[0].imagen);
            $('.noticiaPrincipal h5').text(data.noticias[0].modalidad);
            $('.noticiaPrincipal h3').text(data.noticias[0].titulo);
            $('.noticiaPrincipal p').text(data.noticias[0].subtitulo);
            //Noticias secundarias
            for(let i = 1; i <= 2; i++){
                //console.log(i)
                $('#noticia' + i + ' img').attr('src', data.noticias[i].imagen);
                $('#noticia' + i + ' h5').text(data.noticias[i].modalidad);
                $('#noticia' + i + ' h3').text(data.noticias[i].titulo);
            }
        },
        error: function () {
            console.log("No se ha podido obtener la información");
        }
    });
})