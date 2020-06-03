

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() {
    return _ContadorPageState();
  }
  
}


class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = new TextStyle( fontSize:25);
  int _conteo= 0;
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Prueba titulo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Contador", style: _estiloTexto ),
            Text( '$_conteo' , style: _estiloTexto),
          ],
        )
      ),

      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        
            FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero)),
            Expanded(child: SizedBox()),
            
            FloatingActionButton( onPressed: _sustraer, child: Icon(Icons.remove )),
            SizedBox(width: 30.0),
            
            FloatingActionButton( onPressed: _agregar, child: Icon(Icons.add )),
            SizedBox(width: 30.0),
      
      ],
      
    );
    

  }

  void _agregar(){
  
    setState(() => _conteo++);
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

  void _reset(){
    setState(() => _conteo= 0);
  }

}