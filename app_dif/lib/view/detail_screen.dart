import 'package:flutter/material.dart';
import '../model/service_model.dart';
import '../model/schedule_model.dart';
import '../model/location_model.dart';
import '../controller/database_controller.dart';
import './categories_constants.dart';
import 'dart:developer' as developer;
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final ServiceModel service;
  DetailScreen({Key? key, required this.service}) : super(key: key);

  @override
  State<DetailScreen> createState() => DetailScreenState(service: this.service);
}

class DetailScreenState extends State<DetailScreen> {
  DatabaseController dbController = DatabaseController();
  late ServiceModel service;
  DetailScreenState({required this.service}) : super();

  late Future<List<ScheduleModel>> futureHorarios;
  late Future<List<LocationModel>> futureLocations;

  @override
  void initState() {
    super.initState();

    this.futureHorarios = fetchHorarios();
    this.futureLocations = fetchLocations();
  }

  List<Widget> getUbicacionesYHorarios(
      AsyncSnapshot<List<LocationModel>> locations,
      AsyncSnapshot<List<ScheduleModel>> schedules) {
    // Guardar tarjetas en lista
    List<Widget> result = [];

    if (locations.data?.length == 0) return result;
    // Agrupar horarios por id ubicacion
    Map<String, String> ubicacionesHorarios = {};
    // Asignar llaves de ubicaciones
    locations.data?.forEach((location) {
      ubicacionesHorarios[location.locationID.toString()] = "";
    });
    // Asignar horarios de servicios (solo si horarios no es null)
    if (schedules.hasData && schedules.data?.length != 0) {
      schedules.data?.forEach((schedule) {
        ubicacionesHorarios[schedule.locationID.toString()] =
            (ubicacionesHorarios[schedule.locationID.toString()] ?? '') +
                "(" +
                schedule.weekday +
                ") " +
                schedule.startTime +
                " a " +
                schedule.endTime +
                "\n";
      });
    }

    // Iterar ubicaciones
    locations.data?.forEach((location) {
      // Quitarle el enter de hasta el final a los horarios
      String horarios =
          ubicacionesHorarios[location.locationID.toString()] ?? "";
      if (horarios.length > 0) {
        horarios = horarios.substring(0, horarios.length - 1);
      } else {
        horarios = "Horario disponible en nuestra página de Facebook";
      }

      // Añadir tarjeta de ubicacion a lista
      // Guardar horarios porque #FLutter
      result.add(Card(
        child: ListTile(
          leading: const Icon(Icons.directions, color: Colors.blue),
          title: Text(
            location.address,
            style: const TextStyle(fontSize: 12),
          ),
          subtitle: Text(
            horarios,
            style: const TextStyle(fontSize: 11),
          ),
          onTap: () {
            launch('https://www.google.com.mx/maps/place/' +
                location.latitude.toString() +
                '+' +
                location.longitude.toString());
          },
        ),
      ));
    });
    // Regresar lista de tarjetas
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.categoria),
        backgroundColor: categoriesIconsColors[service.categoria],
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Service name
        Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 3),
          child: Text(
            service.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        // Service description
        Padding(
          padding: EdgeInsets.only(top: 6, left: 24, right: 24, bottom: 24),
          child: Text(
            service.description,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16),
          ),
        ),
        // Ubicaciones (heading)
        Padding(
            padding: EdgeInsets.only(top: 6, left: 24, right: 24, bottom: 6),
            child: Text("Ubicaciones",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),

        FutureBuilder(
            future: this.futureLocations,
            builder: (BuildContext context,
                AsyncSnapshot<List<LocationModel>> locations) {
              if (!locations.hasData) return Text("");
              return FutureBuilder(
                  future: this.futureHorarios,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<ScheduleModel>> schedules) {
                    // if (!schedules.hasData || schedules.data?.length == 0) return Text("");
                    return Column(
                      children: getUbicacionesYHorarios(locations, schedules),
                    );
                  });
            }),

        Center(
            child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          child: Text('Contáctanos en Facebook'),
          onPressed: () {
            // Abrir
            launch('https://www.facebook.com/HuixquiDIF');
          },
        ))
        // Horarios de servicio (heading)
      ])),
    );
  }

  //fetch data
  Future<List<LocationModel>> fetchLocations() async {
    return await dbController.getServiceLocations(this.service.serviceID)
        as List<LocationModel>;
  }

  Future<List<ScheduleModel>> fetchHorarios() async {
    return await dbController.getServiceSchedules(this.service.serviceID)
        as List<ScheduleModel>;
  }
}
