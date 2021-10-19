import 'location_model.dart';
import 'image_model.dart';
import 'schedule_model.dart';

const keyId = 'idServicio';
const keyName = 'nombre';
const keyDescription = 'descripcion';

class ServiceModel {
  int serviceID = 0;
  String name = '';
  String description = '';
  //
  ImageModel image = ImageModel();
  ServiceModel() {
    this.name = 'Servicio no disponible';
  }

  ServiceModel.fromJSON(Map<String, dynamic> json) {
    this.serviceID = json[keyId];
    this.name = json[keyName];
    this.description = json[keyDescription];
  }
}
