import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:core';
import '../model/location_model.dart';
import '../model/reservation_model.dart';
import '../model/service_model.dart';
import '../model/category_model.dart';
import '../model/schedule_model.dart';

//---------------------------metodos API-------

class DatabaseController{
    // GET /categorias
    Future<List<CategoryModel>?> getCategories() async {
        Uri uri = Uri.parse('http://192.168.0.12:3000/categorias');
        //get obtiene json y los guarda en result
        http.Response result = await http.get(uri);
        if(result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        //lista de objetos catehory
        List<CategoryModel> categories = jsonResponse.map<CategoryModel>((category) => CategoryModel.fromJSON(category)).toList();
        return categories;
    }
    // GET /categorias/:categoria
    Future<List<ServiceModel>?> getServicesInCategory(String category) async {
        Uri uri = Uri.parse('http://192.168.0.12:3000/categorias/'+category);
        http.Response result = await http.get(uri);
        if(result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        List<ServiceModel> services = jsonResponse.map<ServiceModel>((service) => ServiceModel.fromJSON(service)).toList();
        return services;
    }
    // GET /servicios/:id
    Future<ServiceModel> getOneService(int id) async {
        Uri uri = Uri.parse('http://192.168.0.12:3000/servicios/'+id.toString());
        http.Response result = await http.get(uri);
        

        if (result.statusCode != HttpStatus.ok) {
            //return ServiceModel();
        }
        final jsonResponse = json.decode(result.body);
        return ServiceModel.fromJSON(jsonResponse);
    }
    // GET /ubicaciones/:id
    Future<List<LocationModel>> getServiceLocations(int id) async {
        String idS =  id.toString();
        Uri uri = Uri.parse('http://192.168.0.12:3000/ubicaciones/'+idS);
        http.Response result = await http.get(uri);
        if (result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        List<LocationModel> locations = jsonResponse.map<LocationModel>((location) => LocationModel.fromJSON(location)).toList();
        return locations;
    }
    // GET /horarios/:id
    Future<List<ScheduleModel>> getServiceSchedules(int id) async {
        String idS = id.toString();
        Uri uri = Uri.parse('http://192.168.0.12:3000/horarios/'+idS);
        http.Response result = await http.get(uri);
        if (result.statusCode != HttpStatus.ok) return [];
        final jsonResponse = json.decode(result.body);
        List<ScheduleModel> schedules = jsonResponse.map<ScheduleModel>((schedule) => ScheduleModel.fromJSON(schedule)).toList();
        return schedules;
    }
}