import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'controller/database_controller.dart';
import 'model/service_model.dart';
import 'model/category_model.dart';
import 'view/category_screen.dart';
import 'dart:developer' as developer;

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    developer.log('Hellooooo');
    return MaterialApp(
      title: 'DIF Huixquilucan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'DIF Huixquilucan'),
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
  DatabaseController dbController = DatabaseController();
  ServiceModel servicio = ServiceModel();

  List<CategoryModel> categories = []; 

  @override
  void initState() {
    categorias();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: categorias(), //Vuelve a llamar
          builder: (BuildContext context, AsyncSnapshot<List<CategoryModel>> categorias) {
            return ListView.builder(
                itemCount: categorias.length,
                itemBuilder: (BuildContext context, int position) {
                  return Container(
                    key: Key(position.toString()),
                    // Podríamos ponerle un Text solamente, o no sé cómo queramos que se vea
                    // Yo digo qu 2, la categoroia y su count
                      child: ListTile(
                        title: Text(categorias.data![position].name),
                        subtitle: Text(categorias.data![position].count),
                        onTap: () { 
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CategoryScreen()),
                          );
                          /// Aqui llamariamos a otro ventana
                          // Sii, esa ya sería la segunda pantalla en otra clase. De hecho iré haciendo el archivo, vavav para  probar
                          // Ayy lo borré y no puedo hacer ctrl z :/ /no te preocuoes jaja
                        },
                      )
                    // Acá iría
                    // Esto?? Sii creo
                    // Cual seria la  diferencia con dissmisable? que se pudede  borrar?
                    // Dismissable es para los elementos de lista que les puedes hacer swipe para eliminar ah vbvavav
                  );
                }
            );
          }
      )
    );
  }


  // Editamos este?? para categorias?  
  // Sii me late
  Future<void> categorias() async {
    List<CategoryModel> _categories = [];
    _categories = await dbController.getCategories() as List<CategoryModel>;
    developer.log('esto es el call a categorias');
    setState((){
      categories = _categories;
    });
  }

  //En main2 esta como se  uso la  lista de pizzas
  // Habia olvidado importar categorymodel, ya quedo /  vava

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('JSON')),
  //     body: FutureBuilder(
  //         future: callPizzas(), //Vuelve a llamar
  //         builder: (BuildContext context, AsyncSnapshot<List<Pizza>> pizzas) {
  //           return ListView.builder(
  //               itemCount: (pizzas.data == null) ? 0 : pizzas.data!.length,
  //               itemBuilder: (BuildContext context, int position) {
  //                 return Dismissible(

  //                       //Podemos quitar este, es para boorrar
  //                     onDismissed: (item) {
  //                       HttpHelper helper = HttpHelper();
  //                       pizzas.data!.removeWhere((element) =>
  //                           element.id == pizzas.data![position].id);
  //                       helper.deletePizza(pizzas.data![position].id);
  //                     },
                
                
  //                     key: Key(position.toString()),
  //                     child: ListTile(
  //                       title: Text(pizzas.data![position].pizzaName),
  //                       subtitle: Text(pizzas.data![position].description +
  //                           ' - € ' +
  //                           pizzas.data![position].price.toString()),
  //                       onTap: () {
  //                         Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                               builder: (context) =>
  //                                   PizzaDetail(pizzas.data![position], false)),
  //                         );
  //                       },
  //                     ));
  //               });
  //         }),
  //     floatingActionButton: FloatingActionButton(
  //         child: const Icon(Icons.ac_unit_rounded),
  //         onPressed: () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => PizzaDetail(Pizza(), true)),
  //           );
  //         }),
  //   );
  // }
  
  // Future<List<ServiceModel>> () async {
  //   return pizzas;
  // }

}

