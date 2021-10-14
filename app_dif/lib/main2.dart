import 'package:flutter/material.dart';
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'pizza.dart';
import 'httphelper.dart';
import 'pizza_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //final pwdController = TextEditingController();
  //String myPass = '';

  //final storage = new FlutterSecureStorage();
  //final myKey = 'myPass';

  @override
  void initState() {
    callPizzas();  // LLama
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JSON')),
      body: FutureBuilder(
          future: callPizzas(), //Vuelve a llamar
          builder: (BuildContext context, AsyncSnapshot<List<Pizza>> pizzas) {
            return ListView.builder(
                itemCount: (pizzas.data == null) ? 0 : pizzas.data!.length,
                itemBuilder: (BuildContext context, int position) {
                  return Dismissible(
                      onDismissed: (item) {
                        HttpHelper helper = HttpHelper();
                        pizzas.data!.removeWhere((element) =>
                            element.id == pizzas.data![position].id);
                        helper.deletePizza(pizzas.data![position].id);
                      },
                      key: Key(position.toString()),
                      child: ListTile(
                        title: Text(pizzas.data![position].pizzaName),
                        subtitle: Text(pizzas.data![position].description +
                            ' - € ' +
                            pizzas.data![position].price.toString()),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PizzaDetail(pizzas.data![position], false)),
                          );
                        },
                      ));
                });
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PizzaDetail(Pizza(), true)),
            );
          }),
    );
  }

  /* Future writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future<String> readFromSecureStorage() async {
    String? secret = await storage.read(key: myKey);
    secret!;
    return secret;
  } */
  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    List<Pizza> pizzas = await helper.getPizzaList() as List<Pizza>;
    return pizzas;
  }
}

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'pizza.dart';
// import 'dart:convert';
// import 'dart:io';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter JSON Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String pizzaString = '';
//   int appCounter = 0;
//   String documentsPath='';
//   String tempPath='';
//   File myFile = File('pizzas.txt');
//   String fileText='';

//   final storage = FlutterSecureStorage();
//   final myKey = 'myPass';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(title: Text('Path Provider')),
//     body: Container(
//       child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text('Doc path: ' + documentsPath),
//           Text('Temp path: ' + tempPath),
//           ElevatedButton(
//             child: Text('Read File'),
//             onPressed: () => readFile(),
//           ),
//           Text(fileText),
//         ],),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     //readJsonFile();
//     //readAndWritePreference();
//     getPaths().then((_) {
//       myFile = File('$documentsPath/pizzas.txt');
//       writeFile();
//     });

//     super.initState();
//   }

//   Future<List<Pizza>> readJsonFile() async {
//     String myString = await DefaultAssetBundle.of(context)
//         .loadString('assets/pizzalist.json');
//     List myMap = jsonDecode(myString);
//     List<Pizza> myPizzas = [];
//     myMap.forEach((dynamic pizza) {
//       Pizza myPizza = Pizza.fromJsonOrNull(pizza);
//       if(myPizza.pizzaName != '')
//         myPizzas.add(myPizza);
//     });

//     String json = convertToJSON(myPizzas);
//     print(json);

//     return myPizzas;
//   }

//   String convertToJSON(List<Pizza> pizzas) {
//     String json = '[';
//     pizzas.forEach((pizza) {
//       json += jsonEncode(pizza);
//     });
//     json += ']';
//     return json;
//   }

//   Future readAndWritePreference() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     //para leer appCOunter
//     // appCounter = prefs.getInt('appCounter');
//     if (prefs.getInt('appCounter') == null){
//       appCounter = 1;
//     } else {
//       appCounter++;
//     }

//     await prefs.setInt('appCounter', appCounter);

//     setState((){
//       appCounter = appCounter;
//     });
//   }

//   Future deletePreference() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.clear();
//     setState(() {
//       appCounter = 0;
//     });
//   }

//   Future getPaths() async {
//     Directory docDir = await getApplicationDocumentsDirectory();
//     Directory tempDir = await getTemporaryDirectory();
//     setState(() {
//       documentsPath = docDir.path;
//       tempPath = tempDir.path;
//     });
//   }

//   Future<bool> writeFile() async {
//     try {
//       await myFile.writeAsString('Margherita, Capricciosa, Napoli');
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }

//   Future<bool> readFile() async {
//     try {
//       // Read the file.
//       String fileContent = await myFile.readAsString();
//       setState(() {
//         fileText = fileContent;
//       });
//       return true;
//     } catch (e) {
//       // On error, return false.
//       return false;
//     }
//   }

// }
