import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    print(menuProvider.opciones);
  }

  List<Widget> _listaItems(){
    return[
      ListTile(title: Text('Hola perro')),
      Divider(),
      ListTile(title: Text('Hola perro')),
      ListTile(title: Text('Hola perro')),
    ];
  }
}