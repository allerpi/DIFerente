import 'location_model.dart';
import 'image_model.dart';
import 'schedule_model.dart';
import '../controller/database_controller.dart';

const keyId = 'idServicio';
const keyName = 'nombre';
const keyDescription = 'descripcion';

class ServiceModel {
  late String serviceID;
  late String name;
  late String description;
  //
  late ImageModel image;
  late List<LocationModel> locations;
  late List<ScheduleModel> schedules;
  DatabaseController dbController = DatabaseController();

  ServiceModel() {
    this.name = 'Servicio no disponible';
  }

  ServiceModel.fromJSON(Map<String, dynamic> json) {
    this.serviceID = json[keyId];
    this.name = json[keyName];
    this.description = json[keyDescription];
    // this.contact = json[keyContact];
  }

  void getLocations() async {
    this.locations = await dbController.getServiceLocations(this.serviceID);
  }
}
