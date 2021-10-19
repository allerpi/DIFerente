import 'package:flutter/material.dart';
import '../model/service_model.dart';
import '../model/schedule_model.dart';
import '../model/location_model.dart';
import '../controller/database_controller.dart';
import 'dart:developer' as developer;

class DetailScreen extends StatefulWidget{
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
  void initState(){
    super.initState();

    this.futureHorarios = fetchHorarios();
    this.futureLocations = fetchLocations();    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(service.name)),
        body: Column(
          children: [
            Text(service.description),
            //contar ubicaciones de base de datos
            FutureBuilder(
              future: this.futureLocations, 
              builder: (BuildContext context, AsyncSnapshot<List<LocationModel>> locations){
                return !locations.hasData ? CircularProgressIndicator() : Text("Hay " + locations.data!.length.toString() + " ubicaciones");
              }
            ),
          //contar horarios de base de datos
            FutureBuilder(
              future: this.futureHorarios, 
              builder: (BuildContext context, AsyncSnapshot<List<ScheduleModel>> schedules){
                return !schedules.hasData ? CircularProgressIndicator() : Text("Hay " + schedules.data!.length.toString() + " horarios");
              }
            ),
          ]
        ),
    );
  }
  
  //fetch data
  Future<List<LocationModel>> fetchLocations() async {
    return await dbController.getServiceLocations(this.service.serviceID) as List<LocationModel>;
  }
  Future<List<ScheduleModel>> fetchHorarios() async {
    developer.log(this.service.serviceID.toString());
    return await dbController.getServiceSchedules(this.service.serviceID) as List<ScheduleModel>;
  }
  
}
