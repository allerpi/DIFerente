import 'package:flutter/material.dart';
import '../model/serviceModel.dart';

class ServiceCard extends StatelessWidget{
  ServiceModel service;
  // Constructor
  ServiceCard(ServiceModel service){
    this.service = service;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Servicio DIF")),
      body: Container(
        children: [
          Text('Aca va la descripcion del servicio')
        ]
      )
    )
  }
}