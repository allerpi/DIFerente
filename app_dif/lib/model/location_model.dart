const keyLocationID = 'idUbicacion';
const keyLatitudeID = 'latitud';
const keyLongitudeID = 'longitud';
const keyAddressID = 'direccion';
const keyName = 'nombre';

class LocationModel{
  late int locationID = 0;
  late double latitude = 0;
  late double longitude = 0;
  late String address = "";
  late String name = "";

  LocationModel.fromJSON(Map<String, dynamic> json){
    this.locationID = json[keyLocationID];
    this.latitude = json[keyLatitudeID];
    this.longitude = json[keyLongitudeID];
    this.address = json[keyAddressID];
    this.name = json[keyName];
  }
}