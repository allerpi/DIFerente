import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:core';

import '../model/image_model.dart';
import '../model/location_model.dart';
import '../model/reservation_model.dart';
import '../model/service_model.dart';
import '../model/category_model.dart';
import '../model/schedule_model.dart';

// Hacer algún método para almacenar resultados en memoria, y recuperarlos de ahí cuando no haya conexión

class DatabaseController{
    // GET /categorias
    Future<List<CategoryModel>?> getCategories() async {
        Uri uri = Uri.parse('https://localhost:3000/categorias');
        http.Response result = await http.get(uri);
        if(result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        // [{categoira: "qqq", "COUNT(cateogria)": 3}, {},]
        List<CategoryModel> categories = jsonResponse.map<CategoryModel>((category) => CategoryModel.fromJSON(category)).toList();
        return categories;
    }
    // GET /categorias/:categoria
    Future<List<ServiceModel>?> getServicesInCategory(String category) async {
        Uri uri = Uri.parse('https://localhost:3000/categorias/'+category);
        http.Response result = await http.get(uri);
        if(result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        List<ServiceModel> services = jsonResponse.map<ServiceModel>((service) => ServiceModel.fromJSON(service)).toList();
        return services;
    }
    // GET /servicios
    // Future<List<ServiceModel>?> getServicesList() async {
    //     Uri uri = Uri.parse('https://localhost:3000/servicios')
    //     http.Response result = await http.get(url);
    //     if (result.statusCode != HttpStatus.ok) return null;
    //     final jsonResponse = json.decode(result.body);
    //     List<ServiceModel> services = jsonResponse.map<ServiceModel>((service) => ServiceModel.fromJSON(service)).toList();
    //     return services;
    // }
    // GET /servicios/:id
    Future<ServiceModel> getOneService(String id) async {
        Uri uri = Uri.parse('https://localhost:3000/servicios/'+id);
        http.Response result = await http.get(uri);
        if (result.statusCode != HttpStatus.ok) return ServiceModel();
        final jsonResponse = json.decode(result.body);
        return ServiceModel.fromJSON(jsonResponse);
    }
    // GET /ubicaciones/:id
    Future<List<LocationModel>> getServiceLocations(String id) async {
        Uri uri = Uri.parse('https://localhost:3000/ubicaciones/'+id);
        http.Response result = await http.get(uri);
        if (result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        return jsonResponse.map<LocationModel>((location) => LocationModel.fromJSON(location)).toList();
    }
    // GET /horarios/:id
    Future<List<ScheduleModel>> getServiceSchedules(String id) async {
        Uri uri = Uri.parse('https://localhost:3000/horarios/'+id);
        http.Response result = await http.get(uri);
        if (result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        return jsonResponse.map<ScheduleModel>((location) => ScheduleModel.fromJSON(location)).toList();
    }
    // POST /reservaciones
    Future<String> createReservation(ReservationModel reservation) async {
        // Convert ReservationModel to JSON
        String data = json.encode(reservation.toJSON());
        Uri uri = Uri.parse('https://localhost:3000/reservaciones/');
        http.Response result = await http.post(uri, body: data);
        return result.body;
    }
}