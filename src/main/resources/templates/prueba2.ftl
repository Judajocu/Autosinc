<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Prueba localizacion</title>
</head>
<body>
    <h1>esto muestra localizacion</h1>

    <button onclick="getlocation()"> conseguir loc</button>
    <div id="output"></div>

    <script src="http://code.jquery.com/jquery-2.2.4.min.js">
    </script>
<script>
    var x = document.getElementById('output');

    function getlocation(){
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(gotPoss);
        }else{
            x.innerHTML="error con el navegador";
        }
    }

    function gotPoss(position){
        var y= "AIzaSyAnpyy2mU1VR_zWhF58YOwxW0CvGidn2fI"
        //geolocalizacion.textContent = "(" + position.coords.latitude + ", "  + position.coords.longitude + ")";
        var locAPI="http://maps.googleapis.com/maps/api/geocode/json?latlng="+position.coords.latitude+","+position.coords.longitude+"&?key="+y;

        x.innerHTML=locAPI;


    }

</script>

</body>
</html>