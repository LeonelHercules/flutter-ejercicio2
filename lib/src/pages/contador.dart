import 'package:flutter/material.dart';

class contador_page extends StatefulWidget {
  const contador_page({super.key});

  @override
  State<contador_page> createState() => _contadorState();
}

class _contadorState extends State<contador_page> {
  final estiloText = new TextStyle(fontSize: 25);
  var contador = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text('Ejemplo 2'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contador',
                style: estiloText,
              ),
              Text(
                '$contador',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: _botones());
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add), onPressed: _aumentarContador),
        SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _disminuirContador)
      ],
    );
  }

  void _aumentarContador() {
    setState(() {
      contador++;
    });
  }

  void _disminuirContador() {
    setState(() {
      contador--;
    });
  }
}
