import 'package:flutter/material.dart';
import '../model/service_model.dart';
import './categories_constants.dart';

class ServiceCard extends StatelessWidget {
  ServiceModel service = ServiceModel();
  Function(int id) onPress;
  // Color colour = Colors.blue.withAlpha(30);
  ServiceCard(
      {Key? key, required this.service, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/material/Card-class.html
    return Card(
        child: InkWell(
      splashColor: categoriesIconsColors[this.service.categoria],
      child: Column(children: <Widget>[
        ListTile(
            // Aca podemos ponerle que cambie el ícono según la categoría maybe
            leading: Icon(categoriesIcons[this.service.categoria], color: categoriesIconsColors[this.service.categoria]),
            title: Text(this.service.name))
      ]),
      onTap: () {
        onPress(this.service.serviceID);
      },
    ));
  }
}
