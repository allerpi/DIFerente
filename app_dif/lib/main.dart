import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'controller/databaseController.dart';
import 'model/serviceModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'DIF Huixquilucan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  MyHomePage(title: 'DIF Huixquilucan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ServiceModel servicio = ServiceModel();

  void initState() {
    DatabaseController dbController = DatabaseController();
    dbController.getOneService("2").then((s){
      setState((){
        servicio = s;
      })
    })
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              servicio.name, // Deberia decir el nombre del servicio
              style: Theme.of(context).textTheme.headline4,
            ),

          ],
        ),
      ),

    );
  }
}