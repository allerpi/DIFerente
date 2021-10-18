const keyLocationID = 'locationID';
const keyLatitudeID = 'latitude';
const keyLongitudeID = 'longitude';
const keyAddressID = 'address';
const keyName = 'name';

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