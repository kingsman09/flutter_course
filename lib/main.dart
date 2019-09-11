import 'package:flutter/material.dart';
 
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/card_pages.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        print(settings.name);
        return MaterialPageRoute(
          builder: (BuildContext context) => CardPage()
        );
      },
    );
  }
}