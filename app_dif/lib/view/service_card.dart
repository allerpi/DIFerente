import 'package:flutter/material.dart';
import '../model/service_model.dart';

class ServiceCard extends StatelessWidget {
  ServiceModel service = ServiceModel();
  Function(int id) onPress;
  ServiceCard({Key? key, required this.service, required this.onPress}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/material/Card-class.html
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30), 
        child: Column(
          children: <Widget> [
            ListTile(
              // Aca podemos ponerle que cambie el ícono según la categoría maybe
              leading: Icon(Icons.album), 
              title: Text(this.service.name)
            )
          ]
        ),
        onTap: (){
          onPress(this.service.serviceID);
        },
      )
    );
  }
}
