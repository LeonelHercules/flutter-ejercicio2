import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class radios extends StatefulWidget {
  const radios({super.key});

  @override
  State<radios> createState() => _radiosState();
}

class _radiosState extends State<radios> {
  double valorSlider = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Radios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _slider(),
              SizedBox(
                height: 20,
              ),
              _resultado(valorSlider.toString()),
            ],
          ),
        ));
  }

  Widget _slider() {
    return Slider(
      label: 'avance',
      value: valorSlider,
      min: 5.0,
      max: 100.0,
      onChanged: (valor) {
        setState(() {
          valorSlider = valor;
        });
      },
    );
  }

  Widget _resultado(String dato) {
    return Text(
      dato,
      style: const TextStyle(fontSize: 30),
    );
  }
}
