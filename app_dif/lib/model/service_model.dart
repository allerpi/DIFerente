import 'image_model.dart';

const keyId = 'idServicio';
const keyCat = 'categoria';
const keyName = 'nombre';
const keyDescription = 'descripcion';

class ServiceModel {
  int serviceID = 0;
  String name = '';
  String description = '';
  String categoria = '';
  ImageModel image = ImageModel();
  ServiceModel() {
    this.name = 'Servicio no disponible';
  }

  ServiceModel.fromJSON(Map<String, dynamic> json) {
    this.serviceID = json[keyId];
    this.name = json[keyName];
    this.description = json[keyDescription];
    this.categoria = json[keyCat];
  }
}
