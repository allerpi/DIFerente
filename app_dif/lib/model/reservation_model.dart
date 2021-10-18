import 'service_model.dart';

const keyUser = 'nombre';
const keyAge = 'edad';
const keyMail = 'correo';
const keyPhoneNumber = 'telefono';
const keyDate = 'fecha';
const keyServiceID = 'IDservicio';

class ReservationModel {
    late String username = "";
    late int age = 0;
    late String mail = "";
    late String phoneNumber;
    late String date;
    late int serviceID;

    ReservationModel.fromJSON(Map<String, dynamic> json) {
        this.username = json[keyUser];
        this.age = json[keyAge];
        this.mail = json[keyMail];
        
        this.phoneNumber = json[keyPhoneNumber];
        this.date = json[keyDate];
        this.serviceID = json[keyServiceID];
    }

    // Map<String, dynamic> toJSON(){
    //     Map<String, dynamic> data = Map<String, dynamic>();
    //     data.(keyUser, this.username);
    //     data.put(keyServiceID, this.username);
    //     data.put(keyServiceID, this.service.serviceID);
        // data.put(keyPhoneNumber, this.service.phoneNumber);
        // data.put(keyDate, this.service.service);
    // }

    Map<String, dynamic> toJSON() {
    return {
      keyUser: username,
      keyAge: age,
      keyMail: mail,
      keyPhoneNumber: phoneNumber,
      keyDate: date,
      keyServiceID: serviceID,
    };
  }

}