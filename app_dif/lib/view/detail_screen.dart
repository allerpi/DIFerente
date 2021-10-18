import 'package:flutter/material.dart';
import '../model/service_model.dart';
import 'controller/database_controller.dart';

class DetailScreen extends StatelessWidget {
  DatabaseController dbController = DatabaseController();
  late ServiceModel service;
  DetailScreen({required this.service}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(service.name)),
        body:
            Container(
                child: Text(service.description))
    );
  }
}
