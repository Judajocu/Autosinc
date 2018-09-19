<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Prueba localizacion</title>
</head>
<body>
prueba inicial de corrida
<h1>esto</h1>

<textarea id="geolocalizacion" class="input100" name="geolocalizacion" readonly="readonly">No se pudo obtener su localización...</textarea>

<a href="#" id="get_loc">Conseguir localizacion</a>
<div id="mapa">
    <iframe id="google_map"
            width="425" height="350" frameborder="0" scrolling="no"
            marginheight="0" marginwidth="0"
            src="https://www.google.com/maps/embed?">
    </iframe>
</div>

<script>
    var c=function (pos) {
        var lat=pos.coords.latitude,
            long= pos.coords.longitude,
            coords= lat+', '+long;

        document.getElementById('google_map').setAttribute('src','https://maps.google.com/?q=' +coords + '&z=60&output=embed')
    }

    document.getElementById('get_loc').onclick=function () {
        navigator.geolocation.getCurrentPosition(c);
        return false;
    }
</script>

<script src="/js/geolocation.js"></script>
</body>
</html>