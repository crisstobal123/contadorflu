

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloTexto = new TextStyle( fontSize:25);
  int conteo= 15;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Prueba"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Contador", style: estiloTexto ),
            Text( '$conteo' , style: estiloTexto),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        onPressed: () {
          print("funciona");
          // conteo = conteo + 1;
        }),
    );
  }

}