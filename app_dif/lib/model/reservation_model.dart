import 'service_model.dart';

const keyUser = 'usuario';
const keyDate = 'fecha';
const keyServiceObject = 'servicio';
const keyPhoneNumber = 'phoneNumber';
const keyServiceID = 'servicioID';

class ReservationModel {
    late String username;
    late String phoneNumber;
    late String date;
    late ServiceModel service;

    ReservationModel.fromJSON(Map<String, dynamic> json) {
        this.username = json[keyUser];
        this.phoneNumber = json[keyPhoneNumber];
        this.date = json[keyDate];
        this.service = ServiceModel.fromJSON(json[keyServiceObject]);
    }

    Map<String, dynamic> toJSON(){
        Map<String, dynamic> data;
        data.put(keyUser, this.username);
        data.put(keyServiceID, this.username);
        data.put(keyServiceID, this.service.serviceID);
        // data.put(keyPhoneNumber, this.service.phoneNumber);
        // data.put(keyDate, this.service.service);
    }

}