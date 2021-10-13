import 'package:flutter/material.dart';
import '../model/service_model.dart';

class DetailScreen extends StatelessWidget {
  late ServiceModel service;
  // Constructor
  DetailScreen(ServiceModel service) {
    this.service = service;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Servicio DIF")),
        body:
            Container(
                child: Text('Aca va la descripcion del servicio'))
    );
  }
}
