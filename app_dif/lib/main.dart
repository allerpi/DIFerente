import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'controller/database_controller.dart';
import 'model/service_model.dart';
import 'model/category_model.dart';
import 'view/category_screen.dart';
import 'view/category_card.dart';

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
        primarySwatch: Colors.blue,
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

  late Future<List<CategoryModel>> categories;

  @override
  void initState() {
    super.initState();
    categories = fetchCategorias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        //mostrar categorias
        body: FutureBuilder(
            future: categories,
            builder: (BuildContext context,
                AsyncSnapshot<List<CategoryModel>> categorias) {
              if (categorias.hasData) {
                return ListView.builder(
                    itemCount: categorias.data!.length,
                    itemBuilder: (BuildContext context, int position) {
                      return CategoryCard(
                          category: categorias.data![position],
                          onPress: (categoryName) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen(categoria: categorias.data![position].name)));
                          },);;
                    });
              }
              return CircularProgressIndicator();
            }));
  }

  Future<List<CategoryModel>> fetchCategorias() async {
    return await dbController.getCategories() as List<CategoryModel>;
  }


}
