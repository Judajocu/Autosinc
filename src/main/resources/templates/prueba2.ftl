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
    <h3>Ubicacion</h3>
    <input id="dato1">
    <input id="dato2">
    <input id="dato3">
    <h3>latitud</h3><input id="dato4">
    <h3>longitud</h3><input id="dato5">

    <br/>
    <button href="#" id="get_loc">Mostrar localizacion en el mapa</button>
    <div id="mapa">
        <iframe id="google_map"
                width="425" height="350" frameborder="0" scrolling="no"
                marginheight="0" marginwidth="0"
                src="https://www.google.com/maps/embed?">
        </iframe>
    </div>

    <script src="http://code.jquery.com/jquery-2.2.4.min.js">
    </script>
    <script src="/js/location.js"></script>

</body>
</html>