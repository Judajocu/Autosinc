<!DOCTYPE html>
<html>
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

    <iframe id="google_map"
            width="425" height="350" frameborder="0" scrolling="no"
            marginheight="0" marginwidth="0"
            src="https://maps.google.com/?q=19.437158399999998, -70.6748416&z=15&output=embed">
    </iframe>
</div>

<button onclick="getlocation()"> conseguir l</button>
<div id="output">
    algo
</div>

<script>
    var c=function (pos) {
        var lat=pos.coords.latitude,
            long= pos.coords.longitude,
            coords= lat+', '+long;

        document.getElementById('google_map').setAttribute('src','https://maps.google.com/?q=' +coords + '&z=60&output=embed')
    }

    var e=function(error){
        if(error.code===1){
            alert('Sin permisos para obtener localizacion')
        }
    }

    document.getElementById('get_loc').onclick=function () {
        navigator.geolocation.getCurrentPosition(c,e);
        return false;
    }
</script>
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
    var x=document.getElementById('output');

    x.innerHTML="aqui esta";

    }
</script>

<script src="/js/geolocation.js"></script>
</body>
</html>