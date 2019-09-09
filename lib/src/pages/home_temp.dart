import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems()
        children: _creatItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems () {

    List<Widget> lista = new List<Widget>();

    for(String item in opciones){
      final tempWidget = ListTile(
        title: Text(item),
      );

      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _creatItemsCorta(){
    var widgets = opciones.map(( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item  + ' !'),
            subtitle: Text('otra vez'),
            leading: Icon(Icons.music_note),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();


    return widgets;
  }

}

