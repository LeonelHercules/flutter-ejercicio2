import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloText = new TextStyle(fontSize: 25);
  var contador = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo 2'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
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
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              //contador++;
              print('Hola mundo');
            }));
  }
}
