import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import '../controller/database_controller.dart';
import '../model/service_model.dart';
import '../model/category_model.dart';


//Creo que deberia ser stateless, como las demas views
// Oooh creo que tienes razón

// Faltara constructor??
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categoría')),
      body: Container(
        child: Text("Esta es la pantalla de categoría")
      ),
    );
  }
}
