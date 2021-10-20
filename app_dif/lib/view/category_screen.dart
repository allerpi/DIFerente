// Pantalla que enseña servicios dentro de cada categoria

import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import '../controller/database_controller.dart';
import '../model/service_model.dart';
import '../main.dart';
import './service_card.dart';
import './detail_screen.dart';
import 'dart:developer' as developer;
import './categories_constants.dart';

//Creo que deberia ser stateless, como las demas views
// Oooh creo que tienes razón

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key, required this.categoria}) : super(key: key);
  final String categoria;

  @override
  State<CategoryScreen> createState() =>
      CategoryScreenState(categoria: this.categoria);
}

class CategoryScreenState extends State<CategoryScreen> {
  DatabaseController dbController = DatabaseController();
  late Future<List<ServiceModel>> services;
  String categoria = '';

  CategoryScreenState({required this.categoria}) : super();

  @override
  void initState() {
    super.initState();
    services = fetchServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // categoriesIconsColors[this.service.categoria]
        appBar: AppBar(
          title: Text(widget.categoria), 
          backgroundColor: categoriesIconsColors[categoria],),
        body: FutureBuilder(
            future: services,
            builder: (BuildContext context,
                AsyncSnapshot<List<ServiceModel>> services) {
              if (services.hasData){
                return ListView.builder(
                    itemCount: services.data!.length,
                    itemBuilder: (BuildContext context, int position) {
                      return ServiceCard(
                          service: services.data![position],
                          onPress: (serviceID) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      service: services.data![position])),
                            );
                          });
                });
              }
              return CircularProgressIndicator();
            }));
  }

  Future<List<ServiceModel>> fetchServices() async {
    return await dbController.getServicesInCategory(this.categoria)
        as List<ServiceModel>;
  }
}
