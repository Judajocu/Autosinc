
var x=document.getElementById('direccion');

function getlocation(){
    if(navigator.geolocation){
        navigator.geolocation.getCurrentPosition(gotPoss);
    }else{
        x.innerHTML="error con el navegador";
    }
}

function gotPoss(position){
    //geolocalizacion.textContent = "(" + position.coords.latitude + ", "  + position.coords.longitude + ")";
    var locAPI="http://http://maps.googleapis.com/maps/api/geocode/json?latlng="+position.coords.latitude+","+position.coords.longitude+"&sensor=true";

    $.get({
        url: locAPI,
        succes: function(data){
            console.log(data);
            x.innerHTML=data.results[0].address_component[4].long_name;

        }
    })

}
