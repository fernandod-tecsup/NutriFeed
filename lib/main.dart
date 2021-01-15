import 'package:flutter/material.dart';
//import 'package:flutterapp/src/pages/alert_page.dart';
import 'package:flutterapp/src/pages/card_page.dart';
//import 'package:flutterapp/src/pages/avatar_page.dart';
//import 'package:flutterapp/src/pages/home_page.dart';
import 'package:flutterapp/src/routes/routes.dart';
//import 'package:flutterapp/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //---funcion que retorna ruta dinamic----
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamda ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => CardPage());
      },
    );
  }
}
